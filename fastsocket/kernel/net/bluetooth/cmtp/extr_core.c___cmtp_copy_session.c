
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmtp_session {int num; int state; int flags; int bdaddr; } ;
struct cmtp_conninfo {int num; int state; int flags; int bdaddr; } ;


 int bacpy (int *,int *) ;

__attribute__((used)) static void __cmtp_copy_session(struct cmtp_session *session, struct cmtp_conninfo *ci)
{
 bacpy(&ci->bdaddr, &session->bdaddr);

 ci->flags = session->flags;
 ci->state = session->state;

 ci->num = session->num;
}
