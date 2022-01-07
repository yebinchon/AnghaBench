
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;


 scalar_t__ msg_destnode (struct tipc_msg*) ;
 scalar_t__ msg_short (struct tipc_msg*) ;

__attribute__((used)) static inline int msg_is_dest(struct tipc_msg *m, u32 d)
{
 return(msg_short(m) || (msg_destnode(m) == d));
}
