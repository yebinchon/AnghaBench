
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct load_module_desc {int dummy; } ;
typedef int dll_desc ;
typedef int asection ;
struct TYPE_4__ {int dld_flags; int load_map; int have_read_dld_descriptor; } ;
struct TYPE_3__ {int obfd; } ;
typedef int CORE_ADDR ;


 int DT_HP_DEBUG_PRIVATE ;
 int add_to_solist (int,char*,int,struct load_module_desc*,int ,struct target_ops*) ;
 int * bfd_get_section_by_name (int ,char*) ;
 scalar_t__ bfd_section_size (int ,int *) ;
 TYPE_2__ dld_cache ;
 scalar_t__ dlgetmodinfo (int,struct load_module_desc*,int,int ,int ,int ) ;
 scalar_t__ dlgetname (struct load_module_desc*,int,int ,int ,int ) ;
 int error (char*,...) ;
 int pa64_target_read_memory ;
 char* re_comp (char*) ;
 int read_dld_descriptor (struct target_ops*,int) ;
 TYPE_1__* symfile_objfile ;
 int warning (char*) ;

void
pa64_solib_add (char *arg_string, int from_tty, struct target_ops *target, int readsyms)
{
  struct minimal_symbol *msymbol;
  CORE_ADDR addr;
  asection *shlib_info;
  int status;
  unsigned int dld_flags;
  char buf[4], *re_err;
  int threshold_warning_given = 0;
  int dll_index;
  struct load_module_desc dll_desc;
  char *dll_path;


  if ((re_err = re_comp (arg_string ? arg_string : ".")) != ((void*)0))
    {
      error ("Invalid regexp: %s", re_err);
    }
  if (symfile_objfile == ((void*)0))
    return;


  shlib_info = bfd_get_section_by_name (symfile_objfile->obfd, ".dynamic");
  if (!shlib_info)
    return;


  if (bfd_section_size (symfile_objfile->obfd, shlib_info) == 0)
    return;


  if (! dld_cache.have_read_dld_descriptor)
    if (! read_dld_descriptor (target, readsyms))
      return;


  if ((dld_cache.dld_flags & DT_HP_DEBUG_PRIVATE) == 0)
    warning ("The shared libraries were not privately mapped; setting a\nbreakpoint in a shared library will not work until you rerun the program.\n");


  for (dll_index = 1; ; dll_index++)
    {

      if (dlgetmodinfo (dll_index, &dll_desc, sizeof (dll_desc),
   pa64_target_read_memory, 0, dld_cache.load_map)
   == 0)
 return;


      dll_path = (char *)dlgetname (&dll_desc, sizeof (dll_desc),
       pa64_target_read_memory,
       0, dld_cache.load_map);

      if (!dll_path)
 error ("pa64_solib_add, unable to read shared library path.");

      add_to_solist (from_tty, dll_path, readsyms, &dll_desc, 0, target);
    }
}
