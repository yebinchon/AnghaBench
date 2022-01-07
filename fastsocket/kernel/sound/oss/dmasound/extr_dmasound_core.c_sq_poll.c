
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct poll_table_struct {int dummy; } ;
struct file {int f_mode; } ;
struct TYPE_3__ {scalar_t__ locked; scalar_t__ count; scalar_t__ max_active; scalar_t__ block_size; scalar_t__ rear_size; int action_queue; } ;


 int FMODE_WRITE ;
 unsigned int POLLOUT ;
 unsigned int POLLWRNORM ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int sq_setup (TYPE_1__*) ;
 TYPE_1__ write_sq ;

__attribute__((used)) static unsigned int sq_poll(struct file *file, struct poll_table_struct *wait)
{
 unsigned int mask = 0;
 int retVal;

 if (write_sq.locked == 0) {
  if ((retVal = sq_setup(&write_sq)) < 0)
   return retVal;
  return 0;
 }
 if (file->f_mode & FMODE_WRITE )
  poll_wait(file, &write_sq.action_queue, wait);
 if (file->f_mode & FMODE_WRITE)
  if (write_sq.count < write_sq.max_active || write_sq.block_size - write_sq.rear_size > 0)
   mask |= POLLOUT | POLLWRNORM;
 return mask;

}
