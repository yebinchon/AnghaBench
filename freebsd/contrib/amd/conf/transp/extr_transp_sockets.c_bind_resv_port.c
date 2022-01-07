
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidp ;
typedef scalar_t__ u_short ;
struct sockaddr_in {void* sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;


 int AF_INET ;
 int IPPORT_RESERVED ;
 int bind (int,struct sockaddr*,int) ;
 void* htons (scalar_t__) ;
 int memset (int ,int ,int) ;

int
bind_resv_port(int so, u_short *pp)
{
  struct sockaddr_in sin;
  int rc;
  u_short port;

  memset((voidp) &sin, 0, sizeof(sin));
  sin.sin_family = AF_INET;

  if (pp && *pp > 0) {
    sin.sin_port = htons(*pp);
    rc = bind(so, (struct sockaddr *) &sin, sizeof(sin));
  } else {
    port = IPPORT_RESERVED;

    do {
      --port;
      sin.sin_port = htons(port);
      rc = bind(so, (struct sockaddr *) &sin, sizeof(sin));
    } while (rc < 0 && (int) port > IPPORT_RESERVED / 2);

    if (pp && rc == 0)
      *pp = port;
  }

  return rc;
}
