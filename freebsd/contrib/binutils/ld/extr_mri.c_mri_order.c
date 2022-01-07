
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mri_add_to_list (int *,char const*,int ,int ,int ,int ) ;
 int order ;

void
mri_order (const char *name)
{
  mri_add_to_list (&order, name, 0, 0, 0, 0);
}
