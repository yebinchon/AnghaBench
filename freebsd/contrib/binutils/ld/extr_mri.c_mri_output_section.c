
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int etree_type ;


 int address ;
 int mri_add_to_list (int *,char const*,int *,int ,int ,int ) ;

void
mri_output_section (const char *name, etree_type *vma)
{
  mri_add_to_list (&address, name, vma, 0, 0, 0);
}
