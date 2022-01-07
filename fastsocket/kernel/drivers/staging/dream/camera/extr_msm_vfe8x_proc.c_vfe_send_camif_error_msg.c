
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msgCamifError; } ;
struct vfe_message {TYPE_1__ _u; int _d; } ;
struct TYPE_4__ {int vfeCamifStatusLocal; } ;


 int GFP_ATOMIC ;
 int VFE_MSG_ID_CAMIF_ERROR ;
 TYPE_2__* ctrl ;
 struct vfe_message* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int vfe_proc_ops (int ,struct vfe_message*,int) ;

__attribute__((used)) static void vfe_send_camif_error_msg(void)
{
}
