
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin6_addr; } ;
union sctp_addr {TYPE_1__ v6; } ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int *) ;

__attribute__((used)) static void sctp_v6_seq_dump_addr(struct seq_file *seq, union sctp_addr *addr)
{
 seq_printf(seq, "%pI6 ", &addr->v6.sin6_addr);
}
