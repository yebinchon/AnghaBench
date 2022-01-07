
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int sched_debug_show ;
 int single_open (struct file*,int ,int *) ;

__attribute__((used)) static int sched_debug_open(struct inode *inode, struct file *filp)
{
 return single_open(filp, sched_debug_show, ((void*)0));
}
