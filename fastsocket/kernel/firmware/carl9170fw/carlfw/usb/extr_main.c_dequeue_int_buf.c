
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; } ;
struct carl9170_rsp {TYPE_2__ hdr; } ;
struct TYPE_4__ {scalar_t__ int_pending; size_t int_head_index; struct carl9170_rsp* int_buf; } ;
struct TYPE_6__ {TYPE_1__ usb; } ;


 size_t CARL9170_INT_RQ_CACHES ;
 TYPE_3__ fw ;

__attribute__((used)) static struct carl9170_rsp *dequeue_int_buf(unsigned int space)
{
 struct carl9170_rsp *tmp = ((void*)0);

 if (fw.usb.int_pending > 0) {
  tmp = &fw.usb.int_buf[fw.usb.int_head_index];

  if ((unsigned int)(tmp->hdr.len + 8) > space)
   return ((void*)0);

  fw.usb.int_head_index++;
  fw.usb.int_head_index %= CARL9170_INT_RQ_CACHES;
  fw.usb.int_pending--;
 }

 return tmp;
}
