
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_irq_thread_msg {int asfMaxEdge; } ;
struct vfe_frame_asf_info {int maxEdge; int asfMaxEdge; int HBICount; int asfHbiCount; } ;
struct vfe_asf_info {int maxEdge; int asfMaxEdge; int HBICount; int asfHbiCount; } ;
typedef int rc ;
typedef int asfInfoTemp ;


 int memset (struct vfe_frame_asf_info*,int ,int) ;

__attribute__((used)) static struct vfe_frame_asf_info
vfe_get_asf_frame_info(struct vfe_irq_thread_msg *in)
{
 struct vfe_asf_info asfInfoTemp;
 struct vfe_frame_asf_info rc;

 memset(&rc, 0, sizeof(rc));
 memset(&asfInfoTemp, 0, sizeof(asfInfoTemp));

 asfInfoTemp =
  *((struct vfe_asf_info *)(&(in->asfMaxEdge)));

 rc.asfHbiCount = asfInfoTemp.HBICount;
 rc.asfMaxEdge = asfInfoTemp.maxEdge;

 return rc;
}
