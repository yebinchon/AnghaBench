
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tfile ;


 int MAXPATHLEN ;
 int Punt (char*,char*,int ) ;
 char* TMPPAT ;
 char* bmake_strdup (char*) ;
 int errno ;
 char* getTmpdir () ;
 int mkstemp (char*) ;
 int snprintf (char*,int,char*,char const*,...) ;
 int strerror (int ) ;
 int unlink (char*) ;

int
mkTempFile(const char *pattern, char **fnamep)
{
    static char *tmpdir = ((void*)0);
    char tfile[MAXPATHLEN];
    int fd;

    if (!pattern)
 pattern = TMPPAT;
    if (!tmpdir)
 tmpdir = getTmpdir();
    if (pattern[0] == '/') {
 snprintf(tfile, sizeof(tfile), "%s", pattern);
    } else {
 snprintf(tfile, sizeof(tfile), "%s%s", tmpdir, pattern);
    }
    if ((fd = mkstemp(tfile)) < 0)
 Punt("Could not create temporary file %s: %s", tfile, strerror(errno));
    if (fnamep) {
 *fnamep = bmake_strdup(tfile);
    } else {
 unlink(tfile);
    }
    return fd;
}
