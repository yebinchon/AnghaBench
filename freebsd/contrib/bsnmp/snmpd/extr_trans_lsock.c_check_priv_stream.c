
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucred ;
struct xucred {scalar_t__ cr_version; scalar_t__ cr_uid; } ;
struct port_input {int priv; int fd; } ;
typedef int socklen_t ;


 int LOCAL_PEERCRED ;
 scalar_t__ XUCRED_VERSION ;
 scalar_t__ getsockopt (int ,int ,int ,struct xucred*,int*) ;

__attribute__((used)) static void
check_priv_stream(struct port_input *pi)
{
 struct xucred ucred;
 socklen_t ucredlen;


 ucredlen = sizeof(ucred);

 if (getsockopt(pi->fd, 0, LOCAL_PEERCRED, &ucred, &ucredlen) == 0 &&
     ucredlen >= sizeof(ucred) && ucred.cr_version == XUCRED_VERSION)
  pi->priv = (ucred.cr_uid == 0);
 else
  pi->priv = 0;
}
