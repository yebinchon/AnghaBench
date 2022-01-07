
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_types {int dummy; } ;
struct stab_handle {char* so_string; scalar_t__ so_value; char* main_filename; int gcc_compiled; scalar_t__ file_start_offset; int files; scalar_t__ function_start_offset; scalar_t__ function_end; void* n_opt_found; void* within_function; scalar_t__ sections; int block_depth; struct stab_types** file_types; } ;
typedef scalar_t__ bfd_vma ;
typedef void* bfd_boolean ;


 void* FALSE ;
 int IS_ABSOLUTE_PATH (char const*) ;
 void* TRUE ;
 char* _ (char*) ;
 char* concat (char*,char const*,char const*) ;
 int debug_end_block (void*,scalar_t__) ;
 int debug_end_common_block (void*,char const*) ;
 int debug_end_function (void*,scalar_t__) ;
 int debug_record_line (void*,int,scalar_t__) ;
 int debug_set_filename (void*,char*) ;
 int debug_start_block (void*,scalar_t__) ;
 int debug_start_common_block (void*,char const*) ;
 int debug_start_source (void*,char const*) ;
 int find_excl (struct stab_handle*,char const*,scalar_t__) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int parse_stab_string (void*,struct stab_handle*,int,int,scalar_t__,char const*) ;
 char const* pop_bincl (struct stab_handle*) ;
 int push_bincl (struct stab_handle*,char const*,scalar_t__) ;
 int stab_emit_pending_vars (void*,struct stab_handle*) ;
 int stderr ;
 char* strchr (char const*,char) ;
 int strcmp (char const*,char*) ;
 scalar_t__ xmalloc (int) ;
 void* xstrdup (char const*) ;

bfd_boolean
parse_stab (void *dhandle, void *handle, int type, int desc, bfd_vma value,
     const char *string)
{
  struct stab_handle *info = (struct stab_handle *) handle;





  if (info->so_string != ((void*)0)
      && (type != 130 || *string == '\0' || value != info->so_value))
    {
      if (! debug_set_filename (dhandle, info->so_string))
 return FALSE;
      info->main_filename = info->so_string;

      info->gcc_compiled = 0;
      info->n_opt_found = FALSE;



      if (! info->sections)
 info->file_start_offset = info->so_value;




      info->files = 1;
      info->file_types = ((struct stab_types **)
     xmalloc (sizeof *info->file_types));
      info->file_types[0] = ((void*)0);

      info->so_string = ((void*)0);


    }

  switch (type)
    {
    case 139:
    case 138:
      break;

    case 136:

      if (info->n_opt_found && desc == 1)
 break;

      if (! info->within_function)
 {
   fprintf (stderr, _("N_LBRAC not within function\n"));
   return FALSE;
 }


      if (! debug_start_block (dhandle,
          (value
    + info->file_start_offset
    + info->function_start_offset)))
 return FALSE;


      if (! stab_emit_pending_vars (dhandle, info))
 return FALSE;

      ++info->block_depth;
      break;

    case 132:

      if (info->n_opt_found && desc == 1)
 break;




      if (! stab_emit_pending_vars (dhandle, info))
 return FALSE;


      if (! debug_end_block (dhandle,
        (value
         + info->file_start_offset
         + info->function_start_offset)))
 return FALSE;

      --info->block_depth;
      if (info->block_depth < 0)
 {
   fprintf (stderr, _("Too many N_RBRACs\n"));
   return FALSE;
 }
      break;

    case 130:

      if (info->within_function)
 {
   bfd_vma endval;

   endval = value;
   if (*string != '\0'
       && info->function_end != (bfd_vma) -1
       && info->function_end < endval)
     endval = info->function_end;
   if (! stab_emit_pending_vars (dhandle, info)
       || ! debug_end_function (dhandle, endval))
     return FALSE;
   info->within_function = FALSE;
   info->function_end = (bfd_vma) -1;
 }



      if (*string == '\0')
 return TRUE;





      if (info->so_string == ((void*)0))
 info->so_string = xstrdup (string);
      else
 {
   char *f;

   f = info->so_string;

   if (IS_ABSOLUTE_PATH (string))
     info->so_string = xstrdup (string);
   else
     info->so_string = concat (info->so_string, string,
          (const char *) ((void*)0));
   free (f);
 }

      info->so_value = value;

      break;

    case 129:

      if (! debug_start_source (dhandle, string))
 return FALSE;
      break;

    case 144:

      push_bincl (info, string, value);
      if (! debug_start_source (dhandle, string))
 return FALSE;
      break;

    case 142:

      if (! debug_start_source (dhandle, pop_bincl (info)))
 return FALSE;
      break;

    case 140:


      if (! find_excl (info, string, value))
 return FALSE;
      break;

    case 131:
      if (! debug_record_line (dhandle, desc,
          value + (info->within_function
     ? info->function_start_offset : 0)))
 return FALSE;
      break;

    case 145:
      if (! debug_start_common_block (dhandle, string))
 return FALSE;
      break;

    case 143:
      if (! debug_end_common_block (dhandle, string))
 return FALSE;
      break;

    case 137:
      if (*string == '\0')
 {
   if (info->within_function)
     {


       if (info->sections)
  value += info->function_start_offset;
       if (! stab_emit_pending_vars (dhandle, info)
    || ! debug_end_function (dhandle, value))
  return FALSE;
       info->within_function = FALSE;
       info->function_end = (bfd_vma) -1;
     }
   break;
 }






      if (info->within_function
   && (info->function_end == (bfd_vma) -1
       || value < info->function_end))
 info->function_end = value;







    default:
      {
 const char *colon;

 colon = strchr (string, ':');
 if (colon != ((void*)0)
     && (colon[1] == 'f' || colon[1] == 'F'))
   {
     if (info->within_function)
       {
  bfd_vma endval;

  endval = value;
  if (info->function_end != (bfd_vma) -1
      && info->function_end < endval)
    endval = info->function_end;
  if (! stab_emit_pending_vars (dhandle, info)
      || ! debug_end_function (dhandle, endval))
    return FALSE;
  info->function_end = (bfd_vma) -1;
       }


     if (info->sections)
       info->function_start_offset = value;
     info->within_function = TRUE;
   }

 if (! parse_stab_string (dhandle, info, type, desc, value, string))
   return FALSE;
      }
      break;

    case 133:
      if (string != ((void*)0) && strcmp (string, "gcc2_compiled.") == 0)
 info->gcc_compiled = 2;
      else if (string != ((void*)0) && strcmp (string, "gcc_compiled.") == 0)
 info->gcc_compiled = 1;
      else
 info->n_opt_found = TRUE;
      break;

    case 134:
    case 141:
    case 135:
    case 128:
      break;
    }

  return TRUE;
}
