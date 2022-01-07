
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int supports_temp; } ;


 int ENODEV ;
 int nonseekable_open (struct inode*,struct file*) ;
 TYPE_1__ pcwd_private ;

__attribute__((used)) static int pcwd_temp_open(struct inode *inode, struct file *file)
{
 if (!pcwd_private.supports_temp)
  return -ENODEV;

 return nonseekable_open(inode, file);
}
