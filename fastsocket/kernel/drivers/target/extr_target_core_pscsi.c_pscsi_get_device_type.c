
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_device {int dummy; } ;
struct scsi_device {int type; } ;
struct pscsi_dev_virt {struct scsi_device* pdv_sd; } ;


 struct pscsi_dev_virt* PSCSI_DEV (struct se_device*) ;

__attribute__((used)) static u32 pscsi_get_device_type(struct se_device *dev)
{
 struct pscsi_dev_virt *pdv = PSCSI_DEV(dev);
 struct scsi_device *sd = pdv->pdv_sd;

 return sd->type;
}
