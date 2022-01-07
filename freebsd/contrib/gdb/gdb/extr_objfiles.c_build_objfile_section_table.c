
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {struct obj_section* sections_end; struct obj_section* sections; int objfile_obstack; int obfd; } ;
struct obj_section {int dummy; } ;


 int add_to_objfile_sections ;
 int bfd_map_over_sections (int ,int ,char*) ;
 scalar_t__ obstack_finish (int *) ;

int
build_objfile_section_table (struct objfile *objfile)
{






  objfile->sections_end = 0;
  bfd_map_over_sections (objfile->obfd, add_to_objfile_sections, (char *) objfile);
  objfile->sections = (struct obj_section *)
    obstack_finish (&objfile->objfile_obstack);
  objfile->sections_end = objfile->sections + (unsigned long) objfile->sections_end;
  return (0);
}
