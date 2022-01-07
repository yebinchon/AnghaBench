
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;


 char msg_bits (struct tipc_msg*,int,int,int) ;

__attribute__((used)) static inline char msg_net_plane(struct tipc_msg *m)
{
 return msg_bits(m, 5, 1, 7) + 'A';
}
