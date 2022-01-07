
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_security_struct {int dummy; } ;
struct msg_msg {struct msg_security_struct* security; } ;


 int kfree (struct msg_security_struct*) ;

__attribute__((used)) static void msg_msg_free_security(struct msg_msg *msg)
{
 struct msg_security_struct *msec = msg->security;

 msg->security = ((void*)0);
 kfree(msec);
}
