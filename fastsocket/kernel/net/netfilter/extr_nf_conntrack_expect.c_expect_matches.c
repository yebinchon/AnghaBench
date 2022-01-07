
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_expect {scalar_t__ master; scalar_t__ class; int mask; int tuple; } ;


 scalar_t__ nf_ct_tuple_equal (int *,int *) ;
 scalar_t__ nf_ct_tuple_mask_equal (int *,int *) ;

__attribute__((used)) static inline int expect_matches(const struct nf_conntrack_expect *a,
     const struct nf_conntrack_expect *b)
{
 return a->master == b->master && a->class == b->class
  && nf_ct_tuple_equal(&a->tuple, &b->tuple)
  && nf_ct_tuple_mask_equal(&a->mask, &b->mask);
}
