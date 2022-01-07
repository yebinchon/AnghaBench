
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;


 int msg_set_bits (struct tipc_msg*,int,int,int,char) ;

__attribute__((used)) static inline void msg_set_net_plane(struct tipc_msg *m, char n)
{
 msg_set_bits(m, 5, 1, 7, (n - 'A'));
}
