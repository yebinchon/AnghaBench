
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {int hr_steady_iterations; int hr_dev_name; int * hr_slots; int hr_generation; } ;
struct o2hb_bio_wait_ctxt {int wc_error; } ;
typedef int configured_nodes ;


 int BITS_TO_LONGS (int) ;
 int EINVAL ;
 int ML_ERROR ;
 int ML_NOTICE ;
 int O2NM_MAX_NODES ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int find_next_bit (unsigned long*,int,int) ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int) ;
 int o2hb_arm_write_timeout (struct o2hb_region*) ;
 int o2hb_check_last_timestamp (struct o2hb_region*) ;
 int o2hb_check_slot (struct o2hb_region*,int *) ;
 int o2hb_highest_node (unsigned long*,int) ;
 int o2hb_issue_node_write (struct o2hb_region*,struct o2hb_bio_wait_ctxt*) ;
 int o2hb_prepare_block (struct o2hb_region*,int ) ;
 int o2hb_read_slots (struct o2hb_region*,int) ;
 int o2hb_steady_queue ;
 int o2hb_wait_on_io (struct o2hb_region*,struct o2hb_bio_wait_ctxt*) ;
 int o2nm_configured_node_map (unsigned long*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int o2hb_do_disk_heartbeat(struct o2hb_region *reg)
{
 int i, ret, highest_node, change = 0;
 unsigned long configured_nodes[BITS_TO_LONGS(O2NM_MAX_NODES)];
 struct o2hb_bio_wait_ctxt write_wc;

 ret = o2nm_configured_node_map(configured_nodes,
           sizeof(configured_nodes));
 if (ret) {
  mlog_errno(ret);
  return ret;
 }

 highest_node = o2hb_highest_node(configured_nodes, O2NM_MAX_NODES);
 if (highest_node >= O2NM_MAX_NODES) {
  mlog(ML_NOTICE, "ocfs2_heartbeat: no configured nodes found!\n");
  return -EINVAL;
 }





 ret = o2hb_read_slots(reg, highest_node + 1);
 if (ret < 0) {
  mlog_errno(ret);
  return ret;
 }




 if (!o2hb_check_last_timestamp(reg))
  mlog(ML_ERROR, "Device \"%s\": another node is heartbeating "
       "in our slot!\n", reg->hr_dev_name);


 o2hb_prepare_block(reg, reg->hr_generation);



 ret = o2hb_issue_node_write(reg, &write_wc);
 if (ret < 0) {
  mlog_errno(ret);
  return ret;
 }

 i = -1;
 while((i = find_next_bit(configured_nodes, O2NM_MAX_NODES, i + 1)) < O2NM_MAX_NODES) {

  change |= o2hb_check_slot(reg, &reg->hr_slots[i]);
 }






 o2hb_wait_on_io(reg, &write_wc);
 if (write_wc.wc_error) {



  mlog(ML_ERROR, "Write error %d on device \"%s\"\n",
       write_wc.wc_error, reg->hr_dev_name);
  return write_wc.wc_error;
 }

 o2hb_arm_write_timeout(reg);


 if (!change && (atomic_read(&reg->hr_steady_iterations) != 0)) {
  if (atomic_dec_and_test(&reg->hr_steady_iterations))
   wake_up(&o2hb_steady_queue);
 }

 return 0;
}
