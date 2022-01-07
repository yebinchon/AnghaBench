
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;


 int AF_INET ;
 scalar_t__ EADDRINUSE ;
 scalar_t__ EAGAIN ;
 int INADDR_ANY ;
 int IPPORT_RESERVED ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 scalar_t__ errno ;
 int htons (int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int socket (int ,int,int ) ;

__attribute__((used)) static int
inetresport(int ty)
{
  int alport;
  struct sockaddr_in addr;
  int fd;

  memset(&addr, 0, sizeof(addr));


  addr.sin_family = AF_INET;
  addr.sin_addr.s_addr = INADDR_ANY;
  if ((fd = socket(AF_INET, ty, 0)) < 0)
    return -1;

  for (alport = IPPORT_RESERVED - 1; alport > IPPORT_RESERVED / 2 + 1; alport--) {
    addr.sin_port = htons((u_short) alport);
    if (bind(fd, (struct sockaddr *) &addr, sizeof(addr)) >= 0)
      return fd;
    if (errno != EADDRINUSE) {
      close(fd);
      return -1;
    }
  }
  close(fd);
  errno = EAGAIN;
  return -1;
}
