
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;

__attribute__((used)) static void *merge_stripe_index_into_bio_private(void *bi_private,
       unsigned int stripe_index)
{







 BUG_ON((((uintptr_t)bi_private) & 3) != 0);
 BUG_ON(stripe_index > 3);
 return (void *)(((uintptr_t)bi_private) | stripe_index);
}
