
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_3__ {size_t state; } ;
struct TYPE_4__ {TYPE_1__ dccp; } ;
struct nf_conn {TYPE_2__ proto; } ;


 int * dccp_state_names ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int dccp_print_conntrack(struct seq_file *s, struct nf_conn *ct)
{
 return seq_printf(s, "%s ", dccp_state_names[ct->proto.dccp.state]);
}
