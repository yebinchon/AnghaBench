
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FTS_COMFOLLOW ;
 int FTS_LOGICAL ;
 int FTS_NOCHDIR ;
 int FTS_PHYSICAL ;
 int FTS_XDEV ;
 scalar_t__ Hflag ;
 scalar_t__ Lflag ;
 scalar_t__ PAXPATHLEN ;
 scalar_t__ Xflag ;
 scalar_t__ atdir_start () ;
 int ** farray ;
 int * fthead ;
 scalar_t__ ftree_arg () ;
 int ftsopts ;
 int * malloc (scalar_t__) ;
 int paxwarn (int,char*) ;
 scalar_t__ tflag ;

int
ftree_start(void)
{






 ftsopts = FTS_NOCHDIR;
 if (Lflag)
  ftsopts |= FTS_LOGICAL;
 else
  ftsopts |= FTS_PHYSICAL;
 if (Hflag)



  ftsopts |= FTS_COMFOLLOW;

 if (Xflag)
  ftsopts |= FTS_XDEV;

 if ((fthead == ((void*)0)) && ((farray[0] = malloc(PAXPATHLEN+2)) == ((void*)0))) {
  paxwarn(1, "Unable to allocate memory for file name buffer");
  return(-1);
 }

 if (ftree_arg() < 0)
  return(-1);
 if (tflag && (atdir_start() < 0))
  return(-1);
 return(0);
}
