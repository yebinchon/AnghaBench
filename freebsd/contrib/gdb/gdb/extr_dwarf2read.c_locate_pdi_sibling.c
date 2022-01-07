
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_die_info {char* sibling; scalar_t__ tag; int has_children; } ;
struct dwarf2_cu {int dummy; } ;
typedef int bfd ;


 char* read_partial_die (struct partial_die_info*,int *,char*,struct dwarf2_cu*) ;

__attribute__((used)) static char *
locate_pdi_sibling (struct partial_die_info *orig_pdi, char *info_ptr,
      bfd *abfd, struct dwarf2_cu *cu)
{


  if (orig_pdi->sibling)
    return orig_pdi->sibling;



  if (!orig_pdi->has_children)
    return info_ptr;





  while (1)
    {
      struct partial_die_info pdi;

      info_ptr = read_partial_die (&pdi, abfd, info_ptr, cu);

      if (pdi.tag == 0)
 return info_ptr;
      else
 info_ptr = locate_pdi_sibling (&pdi, info_ptr, abfd, cu);
    }
}
