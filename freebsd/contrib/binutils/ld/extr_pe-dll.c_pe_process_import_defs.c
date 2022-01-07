
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct bfd_link_info {int hash; } ;
struct bfd_link_hash_entry {scalar_t__ type; } ;
struct TYPE_17__ {int name; struct TYPE_17__* next; } ;
typedef TYPE_2__ def_file_module ;
struct TYPE_18__ {char* internal_name; scalar_t__ ordinal; scalar_t__ hint; int flag_noname; int flag_data; scalar_t__ name; scalar_t__ flag_constant; scalar_t__ flag_private; } ;
typedef TYPE_3__ def_file_export ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_19__ {int filename; } ;
typedef TYPE_4__ bfd ;
struct TYPE_20__ {int num_imports; TYPE_1__* imports; TYPE_2__* modules; } ;
struct TYPE_16__ {char* internal_name; scalar_t__ ordinal; int data; scalar_t__ name; TYPE_2__* module; } ;


 scalar_t__ FALSE ;
 int ISALNUM (char) ;
 scalar_t__ TRUE ;
 char* U (char*) ;
 int add_bfd_to_link (TYPE_4__*,int ,struct bfd_link_info*) ;
 int bfd_get_target (TYPE_4__*) ;
 struct bfd_link_hash_entry* bfd_link_hash_lookup (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ bfd_link_hash_undefined ;
 int dll_filename ;
 char* dll_symname ;
 int free (char*) ;
 TYPE_4__* make_head (TYPE_4__*) ;
 TYPE_4__* make_one (TYPE_3__*,TYPE_4__*,int) ;
 TYPE_4__* make_tail (TYPE_4__*) ;
 TYPE_6__* pe_def_file ;
 int pe_dll_id_target (int ) ;
 int sprintf (char*,char*,char*,...) ;
 size_t strlen (char*) ;
 char* xmalloc (size_t) ;
 char* xstrdup (int ) ;

void
pe_process_import_defs (bfd *output_bfd, struct bfd_link_info *link_info)
{
  def_file_module *module;

  pe_dll_id_target (bfd_get_target (output_bfd));

  if (!pe_def_file)
    return;

  for (module = pe_def_file->modules; module; module = module->next)
    {
      int i, do_this_dll;

      dll_filename = module->name;
      dll_symname = xstrdup (module->name);
      for (i = 0; dll_symname[i]; i++)
 if (!ISALNUM (dll_symname[i]))
   dll_symname[i] = '_';

      do_this_dll = 0;

      for (i = 0; i < pe_def_file->num_imports; i++)
 if (pe_def_file->imports[i].module == module)
   {
     def_file_export exp;
     struct bfd_link_hash_entry *blhe;
     int lead_at = (*pe_def_file->imports[i].internal_name == '@');

     size_t len = strlen (pe_def_file->imports[i].internal_name);
     char *name = xmalloc (len + 2 + 6);
     bfd_boolean include_jmp_stub = FALSE;

      if (lead_at)
       sprintf (name, "%s",
         pe_def_file->imports[i].internal_name);
     else
       sprintf (name, "%s%s",U (""),
         pe_def_file->imports[i].internal_name);

     blhe = bfd_link_hash_lookup (link_info->hash, name,
      FALSE, FALSE, FALSE);



     if (!blhe || (blhe && blhe->type != bfd_link_hash_undefined))
       {
  if (lead_at)
    sprintf (name, "%s%s", "__imp_",
      pe_def_file->imports[i].internal_name);
  else
    sprintf (name, "%s%s%s", "__imp_", U (""),
      pe_def_file->imports[i].internal_name);

  blhe = bfd_link_hash_lookup (link_info->hash, name,
          FALSE, FALSE, FALSE);
       }
     else
       include_jmp_stub = TRUE;

     free (name);

     if (blhe && blhe->type == bfd_link_hash_undefined)
       {
  bfd *one;

  if (!do_this_dll)
    {
      bfd *ar_head = make_head (output_bfd);
      add_bfd_to_link (ar_head, ar_head->filename, link_info);
      do_this_dll = 1;
    }
  exp.internal_name = pe_def_file->imports[i].internal_name;
  exp.name = pe_def_file->imports[i].name;
  exp.ordinal = pe_def_file->imports[i].ordinal;
  exp.hint = exp.ordinal >= 0 ? exp.ordinal : 0;
  exp.flag_private = 0;
  exp.flag_constant = 0;
  exp.flag_data = pe_def_file->imports[i].data;
  exp.flag_noname = exp.name ? 0 : 1;
  one = make_one (&exp, output_bfd, (! exp.flag_data) && include_jmp_stub);
  add_bfd_to_link (one, one->filename, link_info);
       }
   }
      if (do_this_dll)
 {
   bfd *ar_tail = make_tail (output_bfd);
   add_bfd_to_link (ar_tail, ar_tail->filename, link_info);
 }

      free (dll_symname);
    }
}
