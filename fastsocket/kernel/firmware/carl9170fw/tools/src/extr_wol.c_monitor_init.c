
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ll {scalar_t__ sll_ifindex; int sll_family; } ;
struct sockaddr {int dummy; } ;
typedef int ll ;


 int AF_PACKET ;
 int ETH_P_ALL ;
 int PF_PACKET ;
 int SOCK_RAW ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,char const*) ;
 int htons (int ) ;
 scalar_t__ if_nametoindex (char const*) ;
 int memset (struct sockaddr_ll*,int ,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static int monitor_init(const char *ifname)
{
 struct sockaddr_ll ll;
 int monitor_sock;

 memset(&ll, 0, sizeof(ll));
 ll.sll_family = AF_PACKET;
 ll.sll_ifindex = if_nametoindex(ifname);
 if (ll.sll_ifindex == 0) {
  fprintf(stderr, "Monitor interface '%s' does not exist\n", ifname);
  return -1;
 }

 monitor_sock = socket(PF_PACKET, SOCK_RAW, htons(ETH_P_ALL));
 if (monitor_sock < 0) {
  fprintf(stderr, "socket(PF_PACKET,SOCK_RAW): %s\n", strerror(errno));
  return -1;
 }

 if (bind(monitor_sock, (struct sockaddr *) &ll, sizeof(ll)) < 0) {
  fprintf(stderr, "bind(PACKET): %s\n", strerror(errno));
  close(monitor_sock);
  return -1;
 }

 return monitor_sock;
}
