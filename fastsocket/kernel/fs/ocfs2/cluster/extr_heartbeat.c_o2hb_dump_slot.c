
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_disk_heartbeat_block {int hb_generation; int hb_cksum; int hb_node; int hb_seq; } ;


 int ML_ERROR ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,long long,int ,int ,long long) ;

__attribute__((used)) static void o2hb_dump_slot(struct o2hb_disk_heartbeat_block *hb_block)
{
 mlog(ML_ERROR, "Dump slot information: seq = 0x%llx, node = %u, "
      "cksum = 0x%x, generation 0x%llx\n",
      (long long)le64_to_cpu(hb_block->hb_seq),
      hb_block->hb_node, le32_to_cpu(hb_block->hb_cksum),
      (long long)le64_to_cpu(hb_block->hb_generation));
}
