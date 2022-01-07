
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_load_memory {int data; } ;
struct inode {int dummy; } ;
struct file {struct policy_load_memory* private_data; } ;


 int BUG_ON (int) ;
 int kfree (struct policy_load_memory*) ;
 scalar_t__ policy_opened ;
 int vfree (int ) ;

__attribute__((used)) static int sel_release_policy(struct inode *inode, struct file *filp)
{
 struct policy_load_memory *plm = filp->private_data;

 BUG_ON(!plm);

 policy_opened = 0;

 vfree(plm->data);
 kfree(plm);

 return 0;
}
