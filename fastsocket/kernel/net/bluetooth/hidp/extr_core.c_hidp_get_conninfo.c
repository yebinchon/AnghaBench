
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int dummy; } ;
struct hidp_conninfo {int bdaddr; } ;


 int ENOENT ;
 int __hidp_copy_session (struct hidp_session*,struct hidp_conninfo*) ;
 struct hidp_session* __hidp_get_session (int *) ;
 int down_read (int *) ;
 int hidp_session_sem ;
 int up_read (int *) ;

int hidp_get_conninfo(struct hidp_conninfo *ci)
{
 struct hidp_session *session;
 int err = 0;

 down_read(&hidp_session_sem);

 session = __hidp_get_session(&ci->bdaddr);
 if (session)
  __hidp_copy_session(session, ci);
 else
  err = -ENOENT;

 up_read(&hidp_session_sem);
 return err;
}
