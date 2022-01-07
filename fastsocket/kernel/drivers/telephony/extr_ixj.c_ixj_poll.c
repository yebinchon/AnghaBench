
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
typedef int poll_table ;
struct TYPE_6__ {scalar_t__ bytes; } ;
struct TYPE_9__ {scalar_t__ read_buffer_ready; scalar_t__ write_buffers_empty; TYPE_1__ ex; int poll_q; } ;
struct TYPE_7__ {int d_inode; } ;
typedef TYPE_4__ IXJ ;


 int NUM (int ) ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLPRI ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 TYPE_4__* get_ixj (int ) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int ixj_poll(struct file *file_p, poll_table * wait)
{
 unsigned int mask = 0;

 IXJ *j = get_ixj(NUM(file_p->f_path.dentry->d_inode));

 poll_wait(file_p, &(j->poll_q), wait);
 if (j->read_buffer_ready > 0)
  mask |= POLLIN | POLLRDNORM;
 if (j->write_buffers_empty > 0)
  mask |= POLLOUT | POLLWRNORM;
 if (j->ex.bytes)
  mask |= POLLPRI;
 return mask;
}
