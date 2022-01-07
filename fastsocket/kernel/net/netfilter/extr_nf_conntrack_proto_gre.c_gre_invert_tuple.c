
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int key; } ;
struct TYPE_11__ {TYPE_4__ gre; } ;
struct TYPE_12__ {TYPE_5__ u; } ;
struct TYPE_7__ {int key; } ;
struct TYPE_8__ {TYPE_1__ gre; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_6__ dst; TYPE_3__ src; } ;



__attribute__((used)) static bool gre_invert_tuple(struct nf_conntrack_tuple *tuple,
        const struct nf_conntrack_tuple *orig)
{
 tuple->dst.u.gre.key = orig->src.u.gre.key;
 tuple->src.u.gre.key = orig->dst.u.gre.key;
 return 1;
}
