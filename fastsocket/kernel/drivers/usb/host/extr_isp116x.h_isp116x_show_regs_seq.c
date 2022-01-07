
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct isp116x {int dummy; } ;


 int isp116x_show_regs (struct isp116x*,int ,struct seq_file*) ;
 int seq ;

__attribute__((used)) static inline void isp116x_show_regs_seq(struct isp116x *isp116x,
       struct seq_file *s)
{
 isp116x_show_regs(isp116x, seq, s);
}
