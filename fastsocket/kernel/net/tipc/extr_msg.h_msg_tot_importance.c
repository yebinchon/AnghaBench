
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;


 scalar_t__ FIRST_FRAGMENT ;
 scalar_t__ MSG_FRAGMENTER ;
 scalar_t__ likely (int) ;
 struct tipc_msg* msg_get_wrapped (struct tipc_msg*) ;
 scalar_t__ msg_importance (struct tipc_msg*) ;
 int msg_isdata (struct tipc_msg*) ;
 scalar_t__ msg_orignode (struct tipc_msg*) ;
 scalar_t__ msg_type (struct tipc_msg*) ;
 scalar_t__ msg_user (struct tipc_msg*) ;
 scalar_t__ tipc_own_addr ;

__attribute__((used)) static inline u32 msg_tot_importance(struct tipc_msg *m)
{
 if (likely(msg_isdata(m))) {
  if (likely(msg_orignode(m) == tipc_own_addr))
   return msg_importance(m);
  return msg_importance(m) + 4;
 }
 if ((msg_user(m) == MSG_FRAGMENTER) &&
     (msg_type(m) == FIRST_FRAGMENT))
  return msg_importance(msg_get_wrapped(m));
 return msg_importance(m);
}
