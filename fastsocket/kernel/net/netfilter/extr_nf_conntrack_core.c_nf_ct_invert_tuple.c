
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dir; int protonum; } ;
struct TYPE_4__ {int l3num; } ;
struct nf_conntrack_tuple {TYPE_1__ dst; TYPE_2__ src; } ;
struct nf_conntrack_l4proto {int (* invert_tuple ) (struct nf_conntrack_tuple*,struct nf_conntrack_tuple const*) ;} ;
struct nf_conntrack_l3proto {scalar_t__ (* invert_tuple ) (struct nf_conntrack_tuple*,struct nf_conntrack_tuple const*) ;} ;


 int memset (struct nf_conntrack_tuple*,int ,int) ;
 scalar_t__ stub1 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple const*) ;
 int stub2 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple const*) ;

bool
nf_ct_invert_tuple(struct nf_conntrack_tuple *inverse,
     const struct nf_conntrack_tuple *orig,
     const struct nf_conntrack_l3proto *l3proto,
     const struct nf_conntrack_l4proto *l4proto)
{
 memset(inverse, 0, sizeof(*inverse));

 inverse->src.l3num = orig->src.l3num;
 if (l3proto->invert_tuple(inverse, orig) == 0)
  return 0;

 inverse->dst.dir = !orig->dst.dir;

 inverse->dst.protonum = orig->dst.protonum;
 return l4proto->invert_tuple(inverse, orig);
}
