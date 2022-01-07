
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct line6_dump_request {int ok; int timer; TYPE_1__* reqbufs; } ;
struct TYPE_2__ {int * buffer; } ;


 int del_timer_sync (int *) ;
 int line6_dumpreq_destructbuf (struct line6_dump_request*,int ) ;

void line6_dumpreq_destruct(struct line6_dump_request *l6dr)
{
 if (l6dr->reqbufs[0].buffer == ((void*)0))
  return;
 line6_dumpreq_destructbuf(l6dr, 0);
 l6dr->ok = 1;
 del_timer_sync(&l6dr->timer);
}
