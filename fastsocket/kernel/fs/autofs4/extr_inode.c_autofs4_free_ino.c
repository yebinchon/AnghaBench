
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct autofs_info {int (* free ) (struct autofs_info*) ;TYPE_1__* dentry; } ;
struct TYPE_2__ {int * d_fsdata; } ;


 int kfree (struct autofs_info*) ;
 int stub1 (struct autofs_info*) ;

void autofs4_free_ino(struct autofs_info *ino)
{
 if (ino->dentry) {
  ino->dentry->d_fsdata = ((void*)0);
  ino->dentry = ((void*)0);
 }
 if (ino->free)
  (ino->free)(ino);
 kfree(ino);
}
