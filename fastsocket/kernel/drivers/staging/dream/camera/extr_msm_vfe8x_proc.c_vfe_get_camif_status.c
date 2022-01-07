
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_msg_camif_status {int pixelCount; int lineCount; scalar_t__ camifHalt; scalar_t__ camifState; } ;
struct vfe_irq_thread_msg {int camifStatus; } ;
struct vfe_camif_stats {int pixelCount; int lineCount; scalar_t__ camifHalt; scalar_t__ camifState; } ;
typedef int rc ;
typedef int camifStatusTemp ;
typedef scalar_t__ boolean ;


 int memset (struct vfe_msg_camif_status*,int ,int) ;

__attribute__((used)) static struct vfe_msg_camif_status
vfe_get_camif_status(struct vfe_irq_thread_msg *in)
{
 struct vfe_camif_stats camifStatusTemp;
 struct vfe_msg_camif_status rc;

 memset(&rc, 0, sizeof(rc));
 memset(&camifStatusTemp, 0, sizeof(camifStatusTemp));

 camifStatusTemp =
  *((struct vfe_camif_stats *)(&(in->camifStatus)));

 rc.camifState = (boolean)camifStatusTemp.camifHalt;
 rc.lineCount = camifStatusTemp.lineCount;
 rc.pixelCount = camifStatusTemp.pixelCount;

 return rc;
}
