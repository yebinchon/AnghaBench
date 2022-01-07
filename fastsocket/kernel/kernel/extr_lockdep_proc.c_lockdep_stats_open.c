
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int lockdep_stats_show ;
 int single_open (struct file*,int ,int *) ;

__attribute__((used)) static int lockdep_stats_open(struct inode *inode, struct file *file)
{
 return single_open(file, lockdep_stats_show, ((void*)0));
}
