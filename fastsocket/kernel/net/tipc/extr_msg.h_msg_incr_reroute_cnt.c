
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;


 scalar_t__ msg_reroute_cnt (struct tipc_msg*) ;
 int msg_set_bits (struct tipc_msg*,int,int,int,scalar_t__) ;

__attribute__((used)) static inline void msg_incr_reroute_cnt(struct tipc_msg *m)
{
 msg_set_bits(m, 1, 21, 0xf, msg_reroute_cnt(m) + 1);
}
