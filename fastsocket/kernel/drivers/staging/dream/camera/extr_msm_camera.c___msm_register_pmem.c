
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_sync {int stats; int frame; } ;
struct msm_pmem_info {int type; } ;


 int EINVAL ;







 int msm_pmem_table_add (int *,struct msm_pmem_info*) ;

__attribute__((used)) static int __msm_register_pmem(struct msm_sync *sync,
  struct msm_pmem_info *pinfo)
{
 int rc = 0;

 switch (pinfo->type) {
 case 131:
 case 130:
 case 128:
 case 132:
 case 129:
  rc = msm_pmem_table_add(&sync->frame, pinfo);
  break;

 case 134:
 case 133:
  rc = msm_pmem_table_add(&sync->stats, pinfo);
  break;

 default:
  rc = -EINVAL;
  break;
 }

 return rc;
}
