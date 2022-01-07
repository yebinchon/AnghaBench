
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mixart_mgr {int dummy; } ;


 int MIXART_MEM (struct mixart_mgr*,scalar_t__) ;
 scalar_t__ MSG_BOUND_STACK_SIZE ;
 scalar_t__ MSG_OUTBOUND_POST_HEAD ;
 scalar_t__ MSG_OUTBOUND_POST_STACK ;
 scalar_t__ MSG_OUTBOUND_POST_TAIL ;
 scalar_t__ readl_be (int ) ;
 int writel_be (scalar_t__,int ) ;

__attribute__((used)) static int retrieve_msg_frame(struct mixart_mgr *mgr, u32 *msg_frame)
{

 u32 headptr, tailptr;

 tailptr = readl_be(MIXART_MEM(mgr, MSG_OUTBOUND_POST_TAIL));
 headptr = readl_be(MIXART_MEM(mgr, MSG_OUTBOUND_POST_HEAD));

 if (tailptr == headptr)
  return 0;

 if (tailptr < MSG_OUTBOUND_POST_STACK)
  return 0;
 if (tailptr >= MSG_OUTBOUND_POST_STACK + MSG_BOUND_STACK_SIZE)
  return 0;

 *msg_frame = readl_be(MIXART_MEM(mgr, tailptr));


 tailptr += 4;
 if( tailptr >= (MSG_OUTBOUND_POST_STACK+MSG_BOUND_STACK_SIZE) )
  tailptr = MSG_OUTBOUND_POST_STACK;
 writel_be(tailptr, MIXART_MEM(mgr, MSG_OUTBOUND_POST_TAIL));

 return 1;
}
