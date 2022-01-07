
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmtp_session {int msgnum; } ;


 int CMTP_INITIAL_MSGNUM ;

__attribute__((used)) static int cmtp_msgnum_get(struct cmtp_session *session)
{
 session->msgnum++;

 if ((session->msgnum & 0xff) > 200)
  session->msgnum = CMTP_INITIAL_MSGNUM + 1;

 return session->msgnum;
}
