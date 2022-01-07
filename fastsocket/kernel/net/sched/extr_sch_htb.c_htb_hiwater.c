
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htb_class {scalar_t__ cmode; long buffer; } ;


 scalar_t__ HTB_CAN_SEND ;
 scalar_t__ htb_hysteresis ;

__attribute__((used)) static inline long htb_hiwater(const struct htb_class *cl)
{
 if (htb_hysteresis)
  return cl->cmode == HTB_CAN_SEND ? -cl->buffer : 0;
 else
  return 0;
}
