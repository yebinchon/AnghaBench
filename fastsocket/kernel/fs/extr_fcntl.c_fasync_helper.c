
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct fasync_struct {int dummy; } ;


 int fasync_add_entry (int,struct file*,struct fasync_struct**) ;
 int fasync_remove_entry (struct file*,struct fasync_struct**) ;

int fasync_helper(int fd, struct file * filp, int on, struct fasync_struct **fapp)
{
 if (!on)
  return fasync_remove_entry(filp, fapp);
 return fasync_add_entry(fd, filp, fapp);
}
