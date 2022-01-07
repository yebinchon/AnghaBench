
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlog (char*,char*,int,char*) ;
 int innetgr (char*,char*,int *,int *) ;
 char* opt_host ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
f_netgrp(char *arg)
{
  int status;
  char *ptr, *nhost;

  if ((ptr = strchr(arg, ',')) != ((void*)0)) {
    *ptr = '\0';
    nhost = ptr + 1;
  } else {
    nhost = opt_host;
  }
  status = innetgr(arg, nhost, ((void*)0), ((void*)0));
  dlog("netgrp = %s status = %d host = %s", arg, status, nhost);
  if (ptr)
    *ptr = ',';
  return status;
}
