
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int * hdr; } ;


 int htonl (int) ;
 int msg_word (struct tipc_msg*,int ) ;

__attribute__((used)) static inline void msg_set_size(struct tipc_msg *m, u32 sz)
{
 m->hdr[0] = htonl((msg_word(m, 0) & ~0x1ffff) | sz);
}
