
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rceb {int dummy; } ;
struct uwb_rc_cmd_done_params {int completion; int reply_size; scalar_t__ reply; } ;
struct uwb_rc {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int complete (int *) ;
 scalar_t__ kmalloc (int ,int ) ;
 int memcpy (scalar_t__,struct uwb_rceb*,int ) ;
 int min (int ,int ) ;

__attribute__((used)) static void uwb_rc_cmd_done(struct uwb_rc *rc, void *arg,
       struct uwb_rceb *reply, ssize_t reply_size)
{
 struct uwb_rc_cmd_done_params *p = (struct uwb_rc_cmd_done_params *)arg;

 if (reply_size > 0) {
  if (p->reply)
   reply_size = min(p->reply_size, reply_size);
  else
   p->reply = kmalloc(reply_size, GFP_ATOMIC);

  if (p->reply)
   memcpy(p->reply, reply, reply_size);
  else
   reply_size = -ENOMEM;
 }
 p->reply_size = reply_size;
 complete(&p->completion);
}
