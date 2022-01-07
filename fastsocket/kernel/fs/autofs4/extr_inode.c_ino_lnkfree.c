
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * symlink; } ;
struct autofs_info {TYPE_1__ u; } ;


 int kfree (int *) ;

__attribute__((used)) static void ino_lnkfree(struct autofs_info *ino)
{
 if (ino->u.symlink) {
  kfree(ino->u.symlink);
  ino->u.symlink = ((void*)0);
 }
}
