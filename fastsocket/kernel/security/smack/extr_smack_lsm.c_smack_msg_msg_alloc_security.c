
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_msg {int security; } ;


 int current_security () ;

__attribute__((used)) static int smack_msg_msg_alloc_security(struct msg_msg *msg)
{
 msg->security = current_security();
 return 0;
}
