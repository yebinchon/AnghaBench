
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct target_ops {int dummy; } ;
typedef int asection ;
struct TYPE_5__ {int have_read_dld_descriptor; int dld_desc; int load_map; int load_map_addr; int is_valid; } ;
struct TYPE_4__ {int obfd; } ;


 int add_to_solist (int ,char*,int,int *,int ,struct target_ops*) ;
 int * bfd_get_section_by_name (int ,char*) ;
 TYPE_2__ dld_cache ;
 scalar_t__ dlgetmodinfo (int,int *,int,int ,int ,int ) ;
 char* dlgetname (int *,int,int ,int ,int ) ;
 int error (char*) ;
 int pa64_target_read_memory ;
 int read_dynamic_info (int *,TYPE_2__*) ;
 TYPE_1__* symfile_objfile ;
 scalar_t__ target_read_memory (int ,char*,int) ;

__attribute__((used)) static int
read_dld_descriptor (struct target_ops *target, int readsyms)
{
  char *dll_path;
  asection *dyninfo_sect;



  if (!dld_cache.is_valid)
    {
      if (symfile_objfile == ((void*)0))
 error ("No object file symbols.");

      dyninfo_sect = bfd_get_section_by_name (symfile_objfile->obfd,
           ".dynamic");
      if (!dyninfo_sect)
 {
   return 0;
 }

      if (!read_dynamic_info (dyninfo_sect, &dld_cache))
 error ("Unable to read in .dynamic section information.");
    }


  if (target_read_memory (dld_cache.load_map_addr,
     (char*) &dld_cache.load_map,
     sizeof(dld_cache.load_map))
      != 0)
    {
      error ("Error while reading in load map pointer.");
    }


  if (dlgetmodinfo (-1,
      &dld_cache.dld_desc,
      sizeof(dld_cache.dld_desc),
      pa64_target_read_memory,
      0,
      dld_cache.load_map)
      == 0)
    {
      error ("Error trying to get information about dynamic linker.");
    }


  dld_cache.have_read_dld_descriptor = 1;
  dll_path = dlgetname (&dld_cache.dld_desc,
   sizeof(dld_cache.dld_desc),
   pa64_target_read_memory,
   0,
   dld_cache.load_map);
  add_to_solist(0, dll_path, readsyms, &dld_cache.dld_desc, 0, target);

  return 1;
}
