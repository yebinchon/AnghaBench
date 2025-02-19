
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


struct TYPE_10__ {int port; } ;
struct TYPE_11__ {TYPE_4__ tcp; } ;
struct TYPE_12__ {TYPE_5__ u; } ;
struct TYPE_7__ {int port; } ;
struct TYPE_8__ {TYPE_1__ tcp; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_6__ src; TYPE_3__ dst; } ;



__attribute__((used)) static bool tcp_invert_tuple(struct nf_conntrack_tuple *tuple,
        const struct nf_conntrack_tuple *orig)
{
 tuple->src.u.tcp.port = orig->dst.u.tcp.port;
 tuple->dst.u.tcp.port = orig->src.u.tcp.port;
 return 1;
}
