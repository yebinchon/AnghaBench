
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binfmt {int lh; } ;


 int binfmt_lock ;
 int list_del (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void unregister_binfmt(struct linux_binfmt * fmt)
{
 write_lock(&binfmt_lock);
 list_del(&fmt->lh);
 write_unlock(&binfmt_lock);
}
