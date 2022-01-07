
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct in_addr {int s_addr; } ;
struct hostent {int h_addr; } ;
typedef TYPE_1__* mountlist ;
typedef int hostaddr ;
struct TYPE_4__ {int ml_directory; int ml_hostname; struct TYPE_4__* ml_next; } ;
typedef int CLIENT ;


 int INADDR_NONE ;
 int fixmount_check_mount (char*,struct in_addr,int ) ;
 struct hostent* gethostbyname (char*) ;
 scalar_t__ is_same_host (int ,int ,int ) ;
 int memcpy (struct in_addr*,int ,int) ;
 int remove_mount (int *,char*,TYPE_1__*,int) ;
 int thisaddr ;
 int thishost ;

void
fix_rmtab(CLIENT *client, char *host, mountlist mp, int fixit, int force)
{
  mountlist p;
  struct hostent *he;
  struct in_addr hostaddr;




  if ((he = gethostbyname(host))) {
    memcpy(&hostaddr, he->h_addr, sizeof(hostaddr));
  } else {
    hostaddr.s_addr = INADDR_NONE;
  }

  for (p = mp; p; p = p->ml_next) {
    if (is_same_host(p->ml_hostname, thishost, thisaddr)) {
      if (force || !fixmount_check_mount(host, hostaddr, p->ml_directory))
 remove_mount(client, host, p, fixit);
    }
  }
}
