
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line6_dump_request {int timer; int wait; } ;


 int init_timer (int *) ;
 int init_waitqueue_head (int *) ;
 int line6_dumpreq_initbuf (struct line6_dump_request*,void const*,size_t,int ) ;

int line6_dumpreq_init(struct line6_dump_request *l6dr, const void *buf,
         size_t len)
{
 int ret;
 ret = line6_dumpreq_initbuf(l6dr, buf, len, 0);
 if (ret < 0)
  return ret;
 init_waitqueue_head(&l6dr->wait);
 init_timer(&l6dr->timer);
 return 0;
}
