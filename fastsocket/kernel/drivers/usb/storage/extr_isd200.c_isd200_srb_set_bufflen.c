
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int length; } ;
struct scsi_cmnd {TYPE_1__ sdb; } ;



__attribute__((used)) static void isd200_srb_set_bufflen(struct scsi_cmnd *srb, unsigned bufflen)
{
 srb->sdb.length = bufflen;
}
