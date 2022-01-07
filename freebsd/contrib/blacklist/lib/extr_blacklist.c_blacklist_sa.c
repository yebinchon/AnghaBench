
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct blacklist {int dummy; } ;
typedef int socklen_t ;


 int blacklist_close (struct blacklist*) ;
 struct blacklist* blacklist_open () ;
 int blacklist_sa_r (struct blacklist*,int,int,struct sockaddr const*,int ,char const*) ;

int
blacklist_sa(int action, int rfd, const struct sockaddr *sa, socklen_t salen,
    const char *msg)
{
 struct blacklist *bl;
 int rv;
 if ((bl = blacklist_open()) == ((void*)0))
  return -1;
 rv = blacklist_sa_r(bl, action, rfd, sa, salen, msg);
 blacklist_close(bl);
 return rv;
}
