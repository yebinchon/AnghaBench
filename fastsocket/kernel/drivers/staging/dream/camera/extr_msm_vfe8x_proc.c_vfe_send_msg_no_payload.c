
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_message {int _d; } ;
typedef enum VFE_MESSAGE_ID { ____Placeholder_VFE_MESSAGE_ID } VFE_MESSAGE_ID ;


 int GFP_ATOMIC ;
 struct vfe_message* kzalloc (int,int ) ;
 int vfe_proc_ops (int,struct vfe_message*,int ) ;

__attribute__((used)) static void vfe_send_msg_no_payload(enum VFE_MESSAGE_ID id)
{
 struct vfe_message *msg;

 msg = kzalloc(sizeof(*msg), GFP_ATOMIC);
 if (!msg)
  return;

 msg->_d = id;
 vfe_proc_ops(id, msg, 0);
}
