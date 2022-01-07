
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ip; } ;
struct TYPE_8__ {TYPE_3__ u3; } ;
struct TYPE_5__ {int ip; } ;
struct TYPE_6__ {TYPE_1__ u3; } ;
struct nf_conntrack_tuple {TYPE_4__ src; TYPE_2__ dst; } ;



__attribute__((used)) static bool ipv4_invert_tuple(struct nf_conntrack_tuple *tuple,
         const struct nf_conntrack_tuple *orig)
{
 tuple->src.u3.ip = orig->dst.u3.ip;
 tuple->dst.u3.ip = orig->src.u3.ip;

 return 1;
}
