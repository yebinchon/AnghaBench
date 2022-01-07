
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct line6_dump_request {TYPE_1__* reqbufs; } ;
struct TYPE_2__ {size_t length; int * buffer; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmalloc (size_t,int ) ;
 int memcpy (int *,void const*,size_t) ;

int line6_dumpreq_initbuf(struct line6_dump_request *l6dr, const void *buf,
     size_t len, int num)
{
 l6dr->reqbufs[num].buffer = kmalloc(len, GFP_KERNEL);
 if (l6dr->reqbufs[num].buffer == ((void*)0))
  return -ENOMEM;
 memcpy(l6dr->reqbufs[num].buffer, buf, len);
 l6dr->reqbufs[num].length = len;
 return 0;
}
