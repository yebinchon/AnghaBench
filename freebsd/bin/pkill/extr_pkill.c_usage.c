
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STATUS_BADUSAGE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char const*) ;
 char* getprogname () ;
 scalar_t__ pgrep ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 const char *ustr;

 if (pgrep)
  ustr = "[-LSfilnoqvx] [-d delim]";
 else
  ustr = "[-signal] [-ILfilnovx]";

 fprintf(stderr,
  "usage: %s %s [-F pidfile] [-G gid] [-M core] [-N system]\n"
  "             [-P ppid] [-U uid] [-c class] [-g pgrp] [-j jail]\n"
  "             [-s sid] [-t tty] [-u euid] pattern ...\n",
  getprogname(), ustr);

 exit(STATUS_BADUSAGE);
}
