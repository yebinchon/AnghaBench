
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct cache_detail {int dummy; } ;
typedef int poll_table ;
struct TYPE_6__ {struct cache_detail* private; } ;
struct TYPE_4__ {int d_inode; } ;


 TYPE_3__* RPC_I (int ) ;
 unsigned int cache_poll (struct file*,int *,struct cache_detail*) ;

__attribute__((used)) static unsigned int cache_poll_pipefs(struct file *filp, poll_table *wait)
{
 struct cache_detail *cd = RPC_I(filp->f_path.dentry->d_inode)->private;

 return cache_poll(filp, wait, cd);
}
