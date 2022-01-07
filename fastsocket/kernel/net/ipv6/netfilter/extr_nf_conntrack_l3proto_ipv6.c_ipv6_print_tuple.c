
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_7__ {int ip6; } ;
struct TYPE_8__ {TYPE_3__ u3; } ;
struct TYPE_5__ {int ip6; } ;
struct TYPE_6__ {TYPE_1__ u3; } ;
struct nf_conntrack_tuple {TYPE_4__ dst; TYPE_2__ src; } ;


 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int ipv6_print_tuple(struct seq_file *s,
       const struct nf_conntrack_tuple *tuple)
{
 return seq_printf(s, "src=%pI6 dst=%pI6 ",
     tuple->src.u3.ip6, tuple->dst.u3.ip6);
}
