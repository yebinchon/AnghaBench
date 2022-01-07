
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int data ;


 int GFP_ATOMIC ;

 scalar_t__ PN_PIPE_NO_ERROR ;
 int WARN_ON (int) ;
 int pep_reply (struct sock*,struct sk_buff*,scalar_t__,scalar_t__ const*,int,int ) ;

__attribute__((used)) static int pep_reject_conn(struct sock *sk, struct sk_buff *skb, u8 code)
{
 static const u8 data[4] = { 128, 128, 128, 0 };
 WARN_ON(code == PN_PIPE_NO_ERROR);
 return pep_reply(sk, skb, code, data, sizeof(data), GFP_ATOMIC);
}
