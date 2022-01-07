
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int line; char* ansi_decl; TYPE_2__* hash_entry; TYPE_4__* file; scalar_t__ prototyped; int is_static; scalar_t__ is_func_def; struct TYPE_10__* next_for_func; } ;
typedef TYPE_3__ def_dec_info ;
struct TYPE_11__ {TYPE_1__* hash_entry; } ;
struct TYPE_9__ {char* symbol; } ;
struct TYPE_8__ {char const* symbol; } ;


 char* alloca (int) ;
 int fprintf (int ,char*,char*,char*,int,char*) ;
 scalar_t__ in_system_include_dir (char const*) ;
 scalar_t__ is_syscalls_file (TYPE_4__*) ;
 int notice (char*,char*,...) ;
 char* pname ;
 int quiet_flag ;
 char* shortpath (int *,char const*) ;
 int stderr ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static const def_dec_info *
find_extern_def (const def_dec_info *head, const def_dec_info *user)
{
  const def_dec_info *dd_p;
  const def_dec_info *extern_def_p = ((void*)0);
  int conflict_noted = 0;
  for (dd_p = head; dd_p; dd_p = dd_p->next_for_func)
    if (dd_p->is_func_def && !dd_p->is_static && dd_p->file == user->file)
      return dd_p;
  for (dd_p = head; dd_p; dd_p = dd_p->next_for_func)
    if (dd_p->is_func_def && !dd_p->is_static)
      {
 if (!extern_def_p)
   extern_def_p = dd_p;
 else
   {


     if (is_syscalls_file (dd_p->file))
       continue;




     if (is_syscalls_file (extern_def_p->file))
       {
         extern_def_p = dd_p;
         continue;
       }





     if (!conflict_noted)
       {
  conflict_noted = 1;
  notice ("%s: conflicting extern definitions of '%s'\n",
   pname, head->hash_entry->symbol);
  if (!quiet_flag)
    {
      notice ("%s: declarations of '%s' will not be converted\n",
       pname, head->hash_entry->symbol);
      notice ("%s: conflict list for '%s' follows:\n",
       pname, head->hash_entry->symbol);
      fprintf (stderr, "%s:     %s(%d): %s\n",
        pname,
        shortpath (((void*)0), extern_def_p->file->hash_entry->symbol),
        extern_def_p->line, extern_def_p->ansi_decl);
    }
       }
     if (!quiet_flag)
       fprintf (stderr, "%s:     %s(%d): %s\n",
         pname,
         shortpath (((void*)0), dd_p->file->hash_entry->symbol),
         dd_p->line, dd_p->ansi_decl);
   }
      }





  if (conflict_noted)
    return ((void*)0);

  if (!extern_def_p)
    {



      for (dd_p = head; dd_p; dd_p = dd_p->next_for_func)
 if (!dd_p->is_func_def && !dd_p->is_static && dd_p->prototyped)
   {
     extern_def_p = dd_p;
     if (!quiet_flag)
       notice ("%s: warning: using formals list from %s(%d) for function '%s'\n",
        pname,
        shortpath (((void*)0), dd_p->file->hash_entry->symbol),
        dd_p->line, dd_p->hash_entry->symbol);
     break;
   }
      if (!extern_def_p)
 {
   const char *file = user->file->hash_entry->symbol;

   if (!quiet_flag)
     if (in_system_include_dir (file))
       {


  char *needed = alloca (strlen (user->ansi_decl) + 1);
         char *p;

         strcpy (needed, user->ansi_decl);
         p = strstr (needed, user->hash_entry->symbol)
             + strlen (user->hash_entry->symbol) + 2;

  *p++ = '?';
  *p++ = '?';
  *p++ = '?';
         strcpy (p, ");");

         notice ("%s: %d: '%s' used but missing from SYSCALLS\n",
   shortpath (((void*)0), file), user->line,
   needed+7);
       }






 }
    }
  return extern_def_p;
}
