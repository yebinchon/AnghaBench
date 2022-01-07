
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char* h_name; char** h_aliases; } ;


 scalar_t__ STREQ (char*,int ) ;
 int XLOG_ERROR ;
 int XLOG_INFO ;
 int dlog (char*,char*,...) ;
 struct hostent* gethostbyname (char*) ;
 char* h_errno ;
 char* hstrerror (char*) ;
 int opt_hostd ;
 int plog (int ,char*,char*,char*) ;

__attribute__((used)) static int
f_xhost(char *arg)
{
  struct hostent *hp;
  char **cp;

  if (!arg)
    return 0;


  if (STREQ(arg, opt_hostd))
    return 1;


  hp = gethostbyname(arg);
  if (hp == ((void*)0)) {



    plog(XLOG_ERROR, "gethostbyname xhost(%s): h_errno %d", arg, h_errno);

    return 0;
  }

  if (hp->h_name) {
    dlog("xhost: compare %s==%s", hp->h_name, opt_hostd);
    if (STREQ(hp->h_name, opt_hostd)) {
      plog(XLOG_INFO, "xhost(%s): matched h_name %s", arg, hp->h_name);
      return 1;
    }
  }

  if (hp->h_aliases == ((void*)0)) {
    dlog("gethostbyname(%s) has no aliases", arg);
    return 0;
  }
  cp = hp->h_aliases;
  while (*cp) {
    dlog("xhost: compare alias %s==%s", *cp, opt_hostd);
    if (STREQ(*cp, opt_hostd)) {
      plog(XLOG_INFO, "xhost(%s): matched alias %s", arg, *cp);
      return 1;
    }
    cp++;
  }

  return 0;
}
