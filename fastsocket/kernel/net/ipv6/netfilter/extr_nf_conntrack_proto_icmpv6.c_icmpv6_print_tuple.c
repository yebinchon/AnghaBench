
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


struct seq_file {int dummy; } ;
struct TYPE_10__ {int id; } ;
struct TYPE_11__ {TYPE_4__ icmp; } ;
struct TYPE_12__ {TYPE_5__ u; } ;
struct TYPE_7__ {int code; int type; } ;
struct TYPE_8__ {TYPE_1__ icmp; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_6__ src; TYPE_3__ dst; } ;


 int ntohs (int ) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;

__attribute__((used)) static int icmpv6_print_tuple(struct seq_file *s,
         const struct nf_conntrack_tuple *tuple)
{
 return seq_printf(s, "type=%u code=%u id=%u ",
     tuple->dst.u.icmp.type,
     tuple->dst.u.icmp.code,
     ntohs(tuple->src.u.icmp.id));
}
