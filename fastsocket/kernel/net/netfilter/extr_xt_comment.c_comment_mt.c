
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_match_param {int dummy; } ;
struct sk_buff {int dummy; } ;



__attribute__((used)) static bool
comment_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{

 return 1;
}
