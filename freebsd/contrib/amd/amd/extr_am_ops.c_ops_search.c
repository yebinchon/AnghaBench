
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fs_type; } ;
typedef TYPE_1__ am_ops ;


 scalar_t__ STREQ (int ,char*) ;
 TYPE_1__** vops ;

am_ops *
ops_search(char *type)
{
  am_ops **vp;
  am_ops *rop = ((void*)0);
  for (vp = vops; (rop = *vp); vp++)
    if (STREQ(rop->fs_type, type))
      break;
  return rop;
}
