
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_data {int state; int lock; } ;


 int EAGAIN ;
 int ENODEV ;
 unsigned int O_NONBLOCK ;


 int down_interruptible (int *) ;
 scalar_t__ down_trylock (int *) ;
 int pr_debug (char*,int ,struct ep_data*,int) ;
 int shortname ;
 int up (int *) ;

__attribute__((used)) static int
get_ready_ep (unsigned f_flags, struct ep_data *epdata)
{
 int val;

 if (f_flags & O_NONBLOCK) {
  if (down_trylock (&epdata->lock) != 0)
   goto nonblock;
  if (epdata->state != 129) {
   up (&epdata->lock);
nonblock:
   val = -EAGAIN;
  } else
   val = 0;
  return val;
 }

 if ((val = down_interruptible (&epdata->lock)) < 0)
  return val;

 switch (epdata->state) {
 case 129:
  break;


 default:
  pr_debug ("%s: ep %p not available, state %d\n",
    shortname, epdata, epdata->state);

 case 128:
  val = -ENODEV;
  up (&epdata->lock);
 }
 return val;
}
