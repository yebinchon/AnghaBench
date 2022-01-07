
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;
struct tipc_media_addr {int dummy; } ;


 int memcpy (struct tipc_media_addr*,int*,int) ;

__attribute__((used)) static inline void msg_get_media_addr(struct tipc_msg *m, struct tipc_media_addr *a)
{
 memcpy(a, &((int*)m)[5], sizeof(*a));
}
