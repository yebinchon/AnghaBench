
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int offset; } ;
struct gfs2_blkreserv {int rs_free; TYPE_1__ rs_rbm; scalar_t__ rs_inum; } ;


 int gfs2_print_dbg (struct seq_file*,char*,unsigned long long,unsigned long long,int ,int ) ;
 scalar_t__ gfs2_rbm_to_block (TYPE_1__*) ;

__attribute__((used)) static void dump_rs(struct seq_file *seq, struct gfs2_blkreserv *rs)
{
 gfs2_print_dbg(seq, "  B: n:%llu s:%llu b:%u f:%u\n",
         (unsigned long long)rs->rs_inum,
         (unsigned long long)gfs2_rbm_to_block(&rs->rs_rbm),
         rs->rs_rbm.offset, rs->rs_free);
}
