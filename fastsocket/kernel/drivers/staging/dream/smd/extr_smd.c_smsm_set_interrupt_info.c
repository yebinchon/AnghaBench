
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsm_interrupt_info {int aArm_interrupts_pending; int aArm_en_mask; } ;


 int EIO ;
 int MSM_SMSM_DEBUG ;
 int SMEM_SMSM_INT_INFO ;
 int msm_smd_debug_mask ;
 int pr_err (char*) ;
 int pr_info (char*,int ,int ,int ,int ) ;
 struct smsm_interrupt_info* smem_alloc (int ,int) ;

int smsm_set_interrupt_info(struct smsm_interrupt_info *info)
{
 struct smsm_interrupt_info *ptr;

 ptr = smem_alloc(SMEM_SMSM_INT_INFO, sizeof(*ptr));
 if (ptr == ((void*)0)) {
  pr_err("smsm_set_sleep_duration <SM NO INT_INFO>\n");
  return -EIO;
 }
 if (msm_smd_debug_mask & MSM_SMSM_DEBUG)
  pr_info("smsm_set_interrupt_info %x %x -> %x %x\n",
         ptr->aArm_en_mask, ptr->aArm_interrupts_pending,
         info->aArm_en_mask, info->aArm_interrupts_pending);
 *ptr = *info;
 return 0;
}
