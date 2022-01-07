
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tipc_msg {size_t* hdr; } ;



__attribute__((used)) static inline void msg_swap_words(struct tipc_msg *msg, u32 a, u32 b)
{
 u32 temp = msg->hdr[a];

 msg->hdr[a] = msg->hdr[b];
 msg->hdr[b] = temp;
}
