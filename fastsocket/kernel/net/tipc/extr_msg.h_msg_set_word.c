
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tipc_msg {int * hdr; } ;


 int htonl (size_t) ;

__attribute__((used)) static inline void msg_set_word(struct tipc_msg *m, u32 w, u32 val)
{
 m->hdr[w] = htonl(val);
}
