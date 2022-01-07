
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int* all; } ;
struct TYPE_8__ {int all; } ;
struct TYPE_11__ {TYPE_3__ u3; TYPE_1__ u; } ;
struct nf_conntrack_tuple_mask {TYPE_4__ src; } ;
struct TYPE_12__ {int* all; } ;
struct TYPE_9__ {int all; } ;
struct TYPE_13__ {TYPE_5__ u3; TYPE_2__ u; } ;
struct TYPE_14__ {TYPE_6__ src; } ;
struct nf_conntrack_expect {int tuple; TYPE_7__ mask; } ;


 int NF_CT_TUPLE_L3SIZE ;
 int nf_ct_tuple_mask_cmp (int *,int *,struct nf_conntrack_tuple_mask*) ;

__attribute__((used)) static inline int expect_clash(const struct nf_conntrack_expect *a,
          const struct nf_conntrack_expect *b)
{


 struct nf_conntrack_tuple_mask intersect_mask;
 int count;

 intersect_mask.src.u.all = a->mask.src.u.all & b->mask.src.u.all;

 for (count = 0; count < NF_CT_TUPLE_L3SIZE; count++){
  intersect_mask.src.u3.all[count] =
   a->mask.src.u3.all[count] & b->mask.src.u3.all[count];
 }

 return nf_ct_tuple_mask_cmp(&a->tuple, &b->tuple, &intersect_mask);
}
