
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camera_enable_cmd {int name; } ;


 int EFAULT ;
 int msm_adsp_enable (int ) ;
 int qcam_mod ;
 int strcmp (int ,char*) ;
 int vfe_mod ;

__attribute__((used)) static int vfe_7x_enable(struct camera_enable_cmd *enable)
{
 int rc = -EFAULT;

 if (!strcmp(enable->name, "QCAMTASK"))
  rc = msm_adsp_enable(qcam_mod);
 else if (!strcmp(enable->name, "VFETASK"))
  rc = msm_adsp_enable(vfe_mod);

 return rc;
}
