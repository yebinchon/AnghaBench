
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p ;
typedef int FILE ;


 int MAXPATHLEN ;
 int error (char*,char*) ;
 int * fopen (char*,char*) ;
 int fsi_log (char*,char*,char*,char*) ;
 int make_banner (int *) ;
 void stub1 (int *,char*) ;
 int xsnprintf (char*,int,char*,char*,char*) ;

FILE *
pref_open(char *pref, char *hn, void (*hdr) (FILE *, char *), char *arg)
{
  char p[MAXPATHLEN];
  FILE *ef;

  xsnprintf(p, sizeof(p), "%s%s", pref, hn);
  fsi_log("Writing %s info for %s to %s", pref, hn, p);
  ef = fopen(p, "w");
  if (ef) {
    (*hdr) (ef, arg);
    make_banner(ef);
  } else {
    error("can't open %s for writing", p);
  }

  return ef;
}
