
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EIO ;
 int MSM_SMSM_DEBUG ;
 int SMEM_SMSM_SLEEP_DELAY ;
 int msm_smd_debug_mask ;
 int pr_err (char*) ;
 int pr_info (char*,int ,int ) ;
 int * smem_alloc (int ,int) ;

int smsm_set_sleep_duration(uint32_t delay)
{
 uint32_t *ptr;

 ptr = smem_alloc(SMEM_SMSM_SLEEP_DELAY, sizeof(*ptr));
 if (ptr == ((void*)0)) {
  pr_err("smsm_set_sleep_duration <SM NO SLEEP_DELAY>\n");
  return -EIO;
 }
 if (msm_smd_debug_mask & MSM_SMSM_DEBUG)
  pr_info("smsm_set_sleep_duration %d -> %d\n",
         *ptr, delay);
 *ptr = delay;
 return 0;
}
