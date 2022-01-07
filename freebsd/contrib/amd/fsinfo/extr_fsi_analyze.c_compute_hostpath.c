
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int MAXPATHLEN ;
 int domain_strip (char*,int ) ;
 int fsi_log (char*,char*,char*) ;
 int hostname ;
 char* strrchr (char*,char) ;
 char* xmalloc (int) ;
 int xstrlcat (char*,char*,int) ;
 int xstrlcpy (char*,char*,int) ;

__attribute__((used)) static char *
compute_hostpath(char *hn)
{
  char *p = xmalloc(MAXPATHLEN);
  char *d;
  char path[MAXPATHLEN];

  xstrlcpy(p, hn, MAXPATHLEN);
  domain_strip(p, hostname);
  path[0] = '\0';

  do {
    d = strrchr(p, '.');
    if (d) {
      *d = '\0';
      xstrlcat(path, d + 1, sizeof(path));
      xstrlcat(path, "/", sizeof(path));
    } else {
      xstrlcat(path, p, sizeof(path));
    }
  } while (d);

  fsi_log("hostpath of '%s' is '%s'", hn, path);

  xstrlcpy(p, path, MAXPATHLEN);
  return p;
}
