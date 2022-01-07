
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {struct list_head* vec; } ;
struct TYPE_9__ {struct list_head* vec; } ;
struct TYPE_8__ {struct list_head* vec; } ;
struct TYPE_7__ {struct list_head* vec; } ;
struct TYPE_6__ {struct list_head* vec; } ;
struct tvec_base {unsigned long timer_jiffies; TYPE_5__ tv5; TYPE_4__ tv1; TYPE_3__ tv4; TYPE_2__ tv3; TYPE_1__ tv2; } ;
struct timer_list {unsigned long expires; int entry; } ;
struct list_head {int dummy; } ;


 int TVN_BITS ;
 unsigned long TVN_MASK ;
 int TVR_BITS ;
 unsigned long TVR_MASK ;
 unsigned long TVR_SIZE ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static void internal_add_timer(struct tvec_base *base, struct timer_list *timer)
{
 unsigned long expires = timer->expires;
 unsigned long idx = expires - base->timer_jiffies;
 struct list_head *vec;

 if (idx < TVR_SIZE) {
  int i = expires & TVR_MASK;
  vec = base->tv1.vec + i;
 } else if (idx < 1 << (TVR_BITS + TVN_BITS)) {
  int i = (expires >> TVR_BITS) & TVN_MASK;
  vec = base->tv2.vec + i;
 } else if (idx < 1 << (TVR_BITS + 2 * TVN_BITS)) {
  int i = (expires >> (TVR_BITS + TVN_BITS)) & TVN_MASK;
  vec = base->tv3.vec + i;
 } else if (idx < 1 << (TVR_BITS + 3 * TVN_BITS)) {
  int i = (expires >> (TVR_BITS + 2 * TVN_BITS)) & TVN_MASK;
  vec = base->tv4.vec + i;
 } else if ((signed long) idx < 0) {




  vec = base->tv1.vec + (base->timer_jiffies & TVR_MASK);
 } else {
  int i;



  if (idx > 0xffffffffUL) {
   idx = 0xffffffffUL;
   expires = idx + base->timer_jiffies;
  }
  i = (expires >> (TVR_BITS + 3 * TVN_BITS)) & TVN_MASK;
  vec = base->tv5.vec + i;
 }



 list_add_tail(&timer->entry, vec);
}
