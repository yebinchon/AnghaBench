
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 char const* _TEMPFILE ;
 int _TEMPFILEPATH ;
 int err (int ,char*,...) ;
 int fchmod (int,int) ;
 char* getenv (char*) ;
 char* malloc (size_t) ;
 int mkstemp (char*) ;
 char* strdup (int ) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;

void
create_tempfile(char **fn, int *fd)
{
 const char *tmpdir;
 char *cp, *tmpf;
 size_t tlen, plen;




 if (fn == ((void*)0) || fd == ((void*)0))
  return;

 tmpdir = getenv("TMPDIR");
 if (tmpdir != ((void*)0) && *tmpdir != '\0') {
  tlen = strlen(tmpdir);
  plen = strlen("ecp.XXXXXXXX");
  tmpf = malloc(tlen + plen + 2);
  if (tmpf == ((void*)0))
   err(EXIT_FAILURE, "malloc failed");
  strncpy(tmpf, tmpdir, tlen);
  cp = &tmpf[tlen - 1];
  if (*cp++ != '/')
   *cp++ = '/';
  strncpy(cp, "ecp.XXXXXXXX", plen);
  cp[plen] = '\0';
 } else {
  tmpf = strdup("/tmp/ecp.XXXXXXXX");
  if (tmpf == ((void*)0))
   err(EXIT_FAILURE, "strdup failed");
 }
 if ((*fd = mkstemp(tmpf)) == -1)
  err(EXIT_FAILURE, "mkstemp %s failed", tmpf);
 if (fchmod(*fd, 0644) == -1)
  err(EXIT_FAILURE, "fchmod %s failed", tmpf);
 *fn = tmpf;



}
