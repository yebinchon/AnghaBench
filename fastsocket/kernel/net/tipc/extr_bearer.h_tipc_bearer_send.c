
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_media_addr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct bearer {int publ; TYPE_1__* media; } ;
struct TYPE_2__ {int (* send_msg ) (struct sk_buff*,int *,struct tipc_media_addr*) ;} ;


 int stub1 (struct sk_buff*,int *,struct tipc_media_addr*) ;

__attribute__((used)) static inline int tipc_bearer_send(struct bearer *b_ptr, struct sk_buff *buf,
       struct tipc_media_addr *dest)
{
 return !b_ptr->media->send_msg(buf, &b_ptr->publ, dest);
}
