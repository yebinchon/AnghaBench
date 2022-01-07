
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct afs_call {int * type; int operation_ID; } ;







 int _enter (char*,int) ;
 int afs_SRXCBCallBack ;
 int afs_SRXCBInitCallBackState ;
 int afs_SRXCBInitCallBackState3 ;
 int afs_SRXCBProbe ;
 int afs_SRXCBTellMeAboutYourself ;
 int ntohl (int ) ;

bool afs_cm_incoming_call(struct afs_call *call)
{
 u32 operation_id = ntohl(call->operation_ID);

 _enter("{CB.OP %u}", operation_id);

 switch (operation_id) {
 case 132:
  call->type = &afs_SRXCBCallBack;
  return 1;
 case 131:
  call->type = &afs_SRXCBInitCallBackState;
  return 1;
 case 130:
  call->type = &afs_SRXCBInitCallBackState3;
  return 1;
 case 129:
  call->type = &afs_SRXCBProbe;
  return 1;
 case 128:
  call->type = &afs_SRXCBTellMeAboutYourself;
  return 1;
 default:
  return 0;
 }
}
