
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int hints ;


 int AF_INET ;
 int EADDRNOTAVAIL ;
 int LOG_ERR ;
 int SOCK_DGRAM ;
 int close (int) ;
 int connect (int,int ,int ) ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (int ,int ,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int ntp_host ;
 int ntp_port ;
 int ntpd_sock ;
 int socket (int ,int ,int ) ;
 int syslog (int ,char*,char const*,...) ;

__attribute__((used)) static int
open_socket(void)
{
 struct addrinfo hints, *res, *res0;
 int error;
 const char *cause;

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = AF_INET;
 hints.ai_socktype = SOCK_DGRAM;

 error = getaddrinfo(ntp_host, ntp_port, &hints, &res0);
 if (error) {
  syslog(LOG_ERR, "%s(%s): %s", ntp_host, ntp_port,
      gai_strerror(error));
  return (-1);
 }

 ntpd_sock = -1;
 cause = "no address";
 errno = EADDRNOTAVAIL;
 for (res = res0; res != ((void*)0); res = res->ai_next) {
  ntpd_sock = socket(res->ai_family, res->ai_socktype,
      res->ai_protocol);
  if (ntpd_sock == -1) {
   cause = "socket";
   continue;
  }
  if (connect(ntpd_sock, res->ai_addr, res->ai_addrlen) == -1) {
   cause = "connect";
   (void)close(ntpd_sock);
   ntpd_sock = -1;
   continue;
  }
  break;
 }
 if (ntpd_sock == -1) {
  syslog(LOG_ERR, "%s: %m", cause);
  return (-1);
 }
 freeaddrinfo(res0);
 return (0);
}
