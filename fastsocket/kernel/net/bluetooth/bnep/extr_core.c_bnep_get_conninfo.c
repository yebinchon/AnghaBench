
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnep_session {int dummy; } ;
struct bnep_conninfo {int dst; } ;


 int ENOENT ;
 int __bnep_copy_ci (struct bnep_conninfo*,struct bnep_session*) ;
 struct bnep_session* __bnep_get_session (int ) ;
 int bnep_session_sem ;
 int down_read (int *) ;
 int up_read (int *) ;

int bnep_get_conninfo(struct bnep_conninfo *ci)
{
 struct bnep_session *s;
 int err = 0;

 down_read(&bnep_session_sem);

 s = __bnep_get_session(ci->dst);
 if (s)
  __bnep_copy_ci(ci, s);
 else
  err = -ENOENT;

 up_read(&bnep_session_sem);
 return err;
}
