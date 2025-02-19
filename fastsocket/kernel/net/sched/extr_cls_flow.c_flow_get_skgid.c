
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {TYPE_4__* sk; } ;
struct TYPE_8__ {TYPE_3__* sk_socket; } ;
struct TYPE_7__ {TYPE_2__* file; } ;
struct TYPE_6__ {TYPE_1__* f_cred; } ;
struct TYPE_5__ {int fsgid; } ;



__attribute__((used)) static u32 flow_get_skgid(const struct sk_buff *skb)
{
 if (skb->sk && skb->sk->sk_socket && skb->sk->sk_socket->file)
  return skb->sk->sk_socket->file->f_cred->fsgid;
 return 0;
}
