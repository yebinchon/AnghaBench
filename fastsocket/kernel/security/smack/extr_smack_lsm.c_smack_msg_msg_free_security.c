
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_msg {int * security; } ;



__attribute__((used)) static void smack_msg_msg_free_security(struct msg_msg *msg)
{
 msg->security = ((void*)0);
}
