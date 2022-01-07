
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct file {int dummy; } ;
typedef int poll_table ;
struct TYPE_6__ {scalar_t__ event_index; int disco_number; int * discoveries; } ;
typedef TYPE_1__ irnet_socket ;
struct TYPE_7__ {scalar_t__ index; int rwait; } ;


 int CTRL_TRACE ;
 int DENTER (int ,char*,TYPE_1__*) ;
 int DEXIT (int ,char*,unsigned int) ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 TYPE_3__ irnet_events ;
 int irnet_get_discovery_log (TYPE_1__*) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static inline unsigned int
irnet_ctrl_poll(irnet_socket * ap,
  struct file * file,
  poll_table * wait)
{
  unsigned int mask;

  DENTER(CTRL_TRACE, "(ap=0x%p)\n", ap);

  poll_wait(file, &irnet_events.rwait, wait);
  mask = POLLOUT | POLLWRNORM;

  if(ap->event_index != irnet_events.index)
    mask |= POLLIN | POLLRDNORM;
  DEXIT(CTRL_TRACE, " - mask=0x%X\n", mask);
  return mask;
}
