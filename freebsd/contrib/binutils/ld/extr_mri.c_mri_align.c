
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int etree_type ;


 int alignment ;
 int mri_add_to_list (int *,char const*,int ,int ,int *,int ) ;

void
mri_align (const char *name, etree_type *exp)
{
  mri_add_to_list (&alignment, name, 0, 0, exp, 0);
}
