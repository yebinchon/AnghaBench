
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct cache_detail {int dummy; } ;
struct TYPE_2__ {struct cache_detail* data; } ;


 TYPE_1__* PDE (struct inode*) ;
 int cache_open (struct inode*,struct file*,struct cache_detail*) ;

__attribute__((used)) static int cache_open_procfs(struct inode *inode, struct file *filp)
{
 struct cache_detail *cd = PDE(inode)->data;

 return cache_open(inode, filp, cd);
}
