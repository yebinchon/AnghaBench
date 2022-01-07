
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct camera_enable_cmd {int name; } ;


 int EFAULT ;
 int msm_adsp_disable (int ) ;
 int qcam_mod ;
 int strcmp (int ,char*) ;
 int vfe_mod ;

__attribute__((used)) static int vfe_7x_disable(struct camera_enable_cmd *enable,
  struct platform_device *dev __attribute__((unused)))
{
 int rc = -EFAULT;

 if (!strcmp(enable->name, "QCAMTASK"))
  rc = msm_adsp_disable(qcam_mod);
 else if (!strcmp(enable->name, "VFETASK"))
  rc = msm_adsp_disable(vfe_mod);

 return rc;
}
