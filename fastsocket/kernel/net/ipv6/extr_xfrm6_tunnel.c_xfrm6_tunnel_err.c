
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct inet6_skb_parm {int dummy; } ;
typedef int __be32 ;
__attribute__((used)) static int xfrm6_tunnel_err(struct sk_buff *skb, struct inet6_skb_parm *opt,
       u8 type, u8 code, int offset, __be32 info)
{

 switch (type) {
 case 139:
  switch (code) {
  case 135:
  case 140:
  case 134:
  case 141:
  case 131:
  default:
   break;
  }
  break;
 case 132:
  break;
 case 130:
  switch (code) {
  case 137:
   break;
  case 138:
  default:
   break;
  }
  break;
 case 133:
  switch (code) {
  case 136: break;
  case 129: break;
  case 128: break;
  }
  break;
 default:
  break;
 }

 return 0;
}
