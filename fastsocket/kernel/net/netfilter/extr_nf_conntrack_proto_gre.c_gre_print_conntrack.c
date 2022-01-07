
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_3__ {int timeout; int stream_timeout; } ;
struct TYPE_4__ {TYPE_1__ gre; } ;
struct nf_conn {TYPE_2__ proto; } ;


 int HZ ;
 int seq_printf (struct seq_file*,char*,int,int) ;

__attribute__((used)) static int gre_print_conntrack(struct seq_file *s, struct nf_conn *ct)
{
 return seq_printf(s, "timeout=%u, stream_timeout=%u ",
     (ct->proto.gre.timeout / HZ),
     (ct->proto.gre.stream_timeout / HZ));
}
