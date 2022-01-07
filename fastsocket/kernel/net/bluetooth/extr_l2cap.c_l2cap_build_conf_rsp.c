
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sock {int dummy; } ;
struct l2cap_conf_rsp {void* flags; void* result; void* scid; void* data; } ;
struct TYPE_2__ {int dcid; } ;


 int BT_DBG (char*,struct sock*) ;
 void* cpu_to_le16 (int ) ;
 TYPE_1__* l2cap_pi (struct sock*) ;

__attribute__((used)) static int l2cap_build_conf_rsp(struct sock *sk, void *data, u16 result, u16 flags)
{
 struct l2cap_conf_rsp *rsp = data;
 void *ptr = rsp->data;

 BT_DBG("sk %p", sk);

 rsp->scid = cpu_to_le16(l2cap_pi(sk)->dcid);
 rsp->result = cpu_to_le16(result);
 rsp->flags = cpu_to_le16(flags);

 return ptr - data;
}
