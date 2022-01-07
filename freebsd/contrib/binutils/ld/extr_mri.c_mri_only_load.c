
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mri_add_to_list (int *,char const*,int ,int ,int ,int ) ;
 int only_load ;

void
mri_only_load (const char *name)
{
  mri_add_to_list (&only_load, name, 0, 0, 0, 0);
}
