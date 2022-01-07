
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct t10_pr_registration {int pr_reg_all_tg_pt; int pr_reg_aptpl; int isid_present_at_reg; int pr_reg_isid; int pr_reg_bin_isid; TYPE_2__* pr_reg_tg_pt_lun; int pr_res_key; int pr_aptpl_target_lun; int pr_res_mapped_lun; struct se_dev_entry* pr_reg_deve; struct se_node_acl* pr_reg_nacl; int pr_res_holders; int pr_reg_atp_mem_list; int pr_reg_atp_list; int pr_reg_aptpl_list; int pr_reg_abort_list; int pr_reg_list; int pr_aptpl_buf; } ;
struct se_node_acl {int dummy; } ;
struct TYPE_3__ {int pr_aptpl_buf_len; } ;
struct se_device {TYPE_1__ t10_pr; } ;
struct se_dev_entry {TYPE_2__* se_lun; int mapped_lun; } ;
struct TYPE_4__ {int unpacked_lun; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int PR_REG_ISID_LEN ;
 int atomic_set (int *,int ) ;
 int get_unaligned_be64 (unsigned char*) ;
 int kmem_cache_free (int ,struct t10_pr_registration*) ;
 struct t10_pr_registration* kmem_cache_zalloc (int ,int ) ;
 int kzalloc (int ,int ) ;
 int pr_err (char*) ;
 int snprintf (int ,int ,char*,unsigned char*) ;
 int t10_pr_reg_cache ;

__attribute__((used)) static struct t10_pr_registration *__core_scsi3_do_alloc_registration(
 struct se_device *dev,
 struct se_node_acl *nacl,
 struct se_dev_entry *deve,
 unsigned char *isid,
 u64 sa_res_key,
 int all_tg_pt,
 int aptpl)
{
 struct t10_pr_registration *pr_reg;

 pr_reg = kmem_cache_zalloc(t10_pr_reg_cache, GFP_ATOMIC);
 if (!pr_reg) {
  pr_err("Unable to allocate struct t10_pr_registration\n");
  return ((void*)0);
 }

 pr_reg->pr_aptpl_buf = kzalloc(dev->t10_pr.pr_aptpl_buf_len,
     GFP_ATOMIC);
 if (!pr_reg->pr_aptpl_buf) {
  pr_err("Unable to allocate pr_reg->pr_aptpl_buf\n");
  kmem_cache_free(t10_pr_reg_cache, pr_reg);
  return ((void*)0);
 }

 INIT_LIST_HEAD(&pr_reg->pr_reg_list);
 INIT_LIST_HEAD(&pr_reg->pr_reg_abort_list);
 INIT_LIST_HEAD(&pr_reg->pr_reg_aptpl_list);
 INIT_LIST_HEAD(&pr_reg->pr_reg_atp_list);
 INIT_LIST_HEAD(&pr_reg->pr_reg_atp_mem_list);
 atomic_set(&pr_reg->pr_res_holders, 0);
 pr_reg->pr_reg_nacl = nacl;
 pr_reg->pr_reg_deve = deve;
 pr_reg->pr_res_mapped_lun = deve->mapped_lun;
 pr_reg->pr_aptpl_target_lun = deve->se_lun->unpacked_lun;
 pr_reg->pr_res_key = sa_res_key;
 pr_reg->pr_reg_all_tg_pt = all_tg_pt;
 pr_reg->pr_reg_aptpl = aptpl;
 pr_reg->pr_reg_tg_pt_lun = deve->se_lun;




 if (isid != ((void*)0)) {
  pr_reg->pr_reg_bin_isid = get_unaligned_be64(isid);
  snprintf(pr_reg->pr_reg_isid, PR_REG_ISID_LEN, "%s", isid);
  pr_reg->isid_present_at_reg = 1;
 }

 return pr_reg;
}
