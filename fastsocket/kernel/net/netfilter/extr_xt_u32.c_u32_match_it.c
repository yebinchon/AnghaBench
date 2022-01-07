
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct xt_u32_test {unsigned int nnums; unsigned int nvalues; TYPE_2__* value; TYPE_1__* location; } ;
struct xt_u32 {unsigned int ntests; struct xt_u32_test* tests; } ;
struct sk_buff {int len; } ;
typedef int n ;
typedef int __be32 ;
struct TYPE_4__ {int min; int max; } ;
struct TYPE_3__ {int number; int nextop; } ;


 int BUG () ;




 int ntohl (int ) ;
 scalar_t__ skb_copy_bits (struct sk_buff const*,int,int *,int) ;

__attribute__((used)) static bool u32_match_it(const struct xt_u32 *data,
    const struct sk_buff *skb)
{
 const struct xt_u32_test *ct;
 unsigned int testind;
 unsigned int nnums;
 unsigned int nvals;
 unsigned int i;
 __be32 n;
 u_int32_t pos;
 u_int32_t val;
 u_int32_t at;





 for (testind = 0; testind < data->ntests; ++testind) {
  ct = &data->tests[testind];
  at = 0;
  pos = ct->location[0].number;

  if (skb->len < 4 || pos > skb->len - 4)
   return 0;

  if (skb_copy_bits(skb, pos, &n, sizeof(n)) < 0)
   BUG();
  val = ntohl(n);
  nnums = ct->nnums;


  for (i = 1; i < nnums; ++i) {
   u_int32_t number = ct->location[i].number;
   switch (ct->location[i].nextop) {
   case 131:
    val &= number;
    break;
   case 129:
    val <<= number;
    break;
   case 128:
    val >>= number;
    break;
   case 130:
    if (at + val < at)
     return 0;
    at += val;
    pos = number;
    if (at + 4 < at || skb->len < at + 4 ||
        pos > skb->len - at - 4)
     return 0;

    if (skb_copy_bits(skb, at + pos, &n,
          sizeof(n)) < 0)
     BUG();
    val = ntohl(n);
    break;
   }
  }


  nvals = ct->nvalues;
  for (i = 0; i < nvals; ++i)
   if (ct->value[i].min <= val && val <= ct->value[i].max)
    break;

  if (i >= ct->nvalues)
   return 0;
 }

 return 1;
}
