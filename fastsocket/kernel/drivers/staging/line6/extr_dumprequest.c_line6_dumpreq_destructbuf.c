
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct line6_dump_request {TYPE_1__* reqbufs; } ;
struct TYPE_2__ {int * buffer; } ;


 int kfree (int *) ;

void line6_dumpreq_destructbuf(struct line6_dump_request *l6dr, int num)
{
 if (l6dr == ((void*)0))
  return;
 if (l6dr->reqbufs[num].buffer == ((void*)0))
  return;
 kfree(l6dr->reqbufs[num].buffer);
 l6dr->reqbufs[num].buffer = ((void*)0);
}
