
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int tag; TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ tagged_supported; } ;



 int MSG_HEAD_TAG ;
 int MSG_ORDERED_TAG ;
 int MSG_SIMPLE_TAG ;


__attribute__((used)) static int tcm_loop_sam_attr(struct scsi_cmnd *sc)
{
 if (sc->device->tagged_supported) {
  switch (sc->tag) {
  case 129:
   return MSG_HEAD_TAG;
  case 128:
   return MSG_ORDERED_TAG;
  default:
   break;
  }
 }

 return MSG_SIMPLE_TAG;
}
