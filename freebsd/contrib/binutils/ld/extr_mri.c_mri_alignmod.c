
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int etree_type ;


 int mri_add_to_list (int *,char const*,int ,int ,int ,int *) ;
 int subalignment ;

void
mri_alignmod (const char *name, etree_type *exp)
{
  mri_add_to_list (&subalignment, name, 0, 0, 0, exp);
}
