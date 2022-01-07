
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostent {scalar_t__ h_addrtype; scalar_t__ h_name; } ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ AF_INET ;
 int CFM_DOMAIN_STRIP ;
 int CFM_NORMALIZE_HOSTNAMES ;
 int dlog (char*,char*,scalar_t__) ;
 int domain_strip (char*,int ) ;
 struct hostent* gethostbyname (char*) ;
 TYPE_1__ gopt ;
 int hostd ;
 char* strealloc (char*,char*) ;

void
host_normalize(char **chp)
{





  if (gopt.flags & CFM_NORMALIZE_HOSTNAMES) {
    struct hostent *hp;
    hp = gethostbyname(*chp);
    if (hp && hp->h_addrtype == AF_INET) {
      dlog("Hostname %s normalized to %s", *chp, hp->h_name);
      *chp = strealloc(*chp, (char *) hp->h_name);
    }
  }
  if (gopt.flags & CFM_DOMAIN_STRIP) {
    domain_strip(*chp, hostd);
  }
}
