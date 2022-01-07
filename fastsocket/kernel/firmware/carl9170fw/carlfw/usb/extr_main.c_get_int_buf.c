
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t seq; } ;
struct carl9170_rsp {TYPE_1__ hdr; } ;
struct TYPE_5__ {size_t int_tail_index; size_t int_pending; struct carl9170_rsp* int_buf; } ;
struct TYPE_6__ {TYPE_2__ usb; } ;


 size_t CARL9170_INT_RQ_CACHES ;
 TYPE_3__ fw ;

__attribute__((used)) static struct carl9170_rsp *get_int_buf(void)
{
 struct carl9170_rsp *tmp;


 tmp = &fw.usb.int_buf[fw.usb.int_tail_index];


 tmp->hdr.seq = fw.usb.int_tail_index;

 fw.usb.int_tail_index++;

 fw.usb.int_tail_index %= CARL9170_INT_RQ_CACHES;
 if (fw.usb.int_pending != CARL9170_INT_RQ_CACHES)
  fw.usb.int_pending++;

 return tmp;
}
