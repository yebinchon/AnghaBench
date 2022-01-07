
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;


 int msg_bits (struct tipc_msg*,int,int,int) ;

__attribute__((used)) static inline u32 msg_max_pkt(struct tipc_msg *m)
{
 return (msg_bits(m, 9, 16, 0xffff) * 4);
}
