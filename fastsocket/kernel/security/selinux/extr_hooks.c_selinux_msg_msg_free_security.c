
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_msg {int dummy; } ;


 int msg_msg_free_security (struct msg_msg*) ;

__attribute__((used)) static void selinux_msg_msg_free_security(struct msg_msg *msg)
{
 msg_msg_free_security(msg);
}
