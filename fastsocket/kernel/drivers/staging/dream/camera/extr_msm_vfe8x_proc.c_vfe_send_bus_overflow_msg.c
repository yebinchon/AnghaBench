
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msgBusOverflow; } ;
struct vfe_message {TYPE_1__ _u; int _d; } ;
struct TYPE_4__ {int vfePmData; } ;


 int GFP_ATOMIC ;
 int VFE_MSG_ID_BUS_OVERFLOW ;
 TYPE_2__* ctrl ;
 struct vfe_message* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int vfe_proc_ops (int ,struct vfe_message*,int) ;

__attribute__((used)) static void vfe_send_bus_overflow_msg(void)
{
 struct vfe_message *msg;
 msg =
  kzalloc(sizeof(struct vfe_message), GFP_ATOMIC);
 if (!msg)
  return;

 msg->_d = VFE_MSG_ID_BUS_OVERFLOW;





 vfe_proc_ops(VFE_MSG_ID_BUS_OVERFLOW,
  msg, sizeof(struct vfe_message));
}
