
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;


 int msg_hdr_sz (struct tipc_msg*) ;
 int msg_set_word (struct tipc_msg*,int,int ) ;

__attribute__((used)) static inline void msg_set_remote_node(struct tipc_msg *m, u32 a)
{
 msg_set_word(m, msg_hdr_sz(m)/4, a);
}
