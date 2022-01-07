
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_2__ {int ai_addrlen; int ai_protocol; int ai_socktype; int ai_family; } ;
struct mx_hostentry {int addr; int host; TYPE_1__ ai; int sa; int pref; } ;


 int LOG_INFO ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int ) ;
 int socket (int ,int ,int ) ;
 int syslog (int ,char*,int ,int ,...) ;

__attribute__((used)) static int
open_connection(struct mx_hostentry *h)
{
 int fd;

 syslog(LOG_INFO, "trying remote delivery to %s [%s] pref %d",
        h->host, h->addr, h->pref);

 fd = socket(h->ai.ai_family, h->ai.ai_socktype, h->ai.ai_protocol);
 if (fd < 0) {
  syslog(LOG_INFO, "socket for %s [%s] failed: %m",
         h->host, h->addr);
  return (-1);
 }

 if (connect(fd, (struct sockaddr *)&h->sa, h->ai.ai_addrlen) < 0) {
  syslog(LOG_INFO, "connect to %s [%s] failed: %m",
         h->host, h->addr);
  close(fd);
  return (-1);
 }

 return (fd);
}
