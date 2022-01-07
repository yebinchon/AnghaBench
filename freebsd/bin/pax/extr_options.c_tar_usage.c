
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fputs (char*,int ) ;
 int stderr ;

void
tar_usage(void)
{
 (void)fputs("usage: tar [-]{crtux}[-befhjmopqsvwyzHLOPXZ014578] [blocksize] ",
   stderr);
 (void)fputs("[archive] [replstr] [-C directory] [-I file] [file ...]\n",
     stderr);
 exit(1);
}
