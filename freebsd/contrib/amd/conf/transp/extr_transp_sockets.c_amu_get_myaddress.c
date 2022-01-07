
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int voidp ;
typedef int u_long ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct hostent {int ** h_addr_list; } ;
typedef int sin ;
typedef int dq ;


 int INADDR_LOOPBACK ;
 int XLOG_ERROR ;
 int XLOG_INFO ;
 int dlog (char*,scalar_t__,int ) ;
 int get_myaddress (struct sockaddr_in*) ;
 struct hostent* gethostbyname (char const*) ;
 int h_errno ;
 int hstrerror (int ) ;
 scalar_t__ htonl (int ) ;
 int inet_dquad (char*,int,scalar_t__) ;
 int memmove (int ,int ,int) ;
 int memset (char*,int ,int) ;
 int plog (int ,char*,char const*,...) ;

void
amu_get_myaddress(struct in_addr *iap, const char *preferred_localhost)
{
  struct hostent *hp;
  char dq[20];
  if (preferred_localhost == ((void*)0))
    goto out;


  hp = gethostbyname(preferred_localhost);
  if (hp == ((void*)0)) {

    plog(XLOG_ERROR, "Unable to resolve localhost_address \"%s\" (%s): using default",
  preferred_localhost, hstrerror(h_errno));
    goto out;
  }
  if (hp->h_addr_list == ((void*)0)) {
    plog(XLOG_ERROR, "localhost_address \"%s\" has no IP addresses: using default",
  preferred_localhost);
    goto out;
  }
  if (hp->h_addr_list[1] != ((void*)0)) {
    plog(XLOG_ERROR, "localhost_address \"%s\" has more than one IP addresses: using first",
  preferred_localhost);
    goto out;
  }
  memmove((voidp) &iap->s_addr, (voidp) hp->h_addr_list[0], sizeof(iap->s_addr));
  plog(XLOG_INFO, "localhost_address \"%s\" requested, using %s",
       preferred_localhost, inet_dquad(dq, sizeof(dq), iap->s_addr));
  return;

 out:
  iap->s_addr = htonl(INADDR_LOOPBACK);
}
