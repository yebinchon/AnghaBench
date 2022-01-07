
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RPC_ANYSOCK ;
 scalar_t__ errno ;
 int inetresport (int) ;

__attribute__((used)) static int
privsock(int ty)
{
  int sock = inetresport(ty);

  if (sock < 0) {
    errno = 0;

    sock = RPC_ANYSOCK;
  }
  return sock;
}
