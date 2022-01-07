
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regex_t ;


 int Error (char*,char const*,char*) ;
 char* bmake_malloc (int) ;
 int free (char*) ;
 int regerror (int,int *,char*,int) ;

__attribute__((used)) static void
VarREError(int reerr, regex_t *pat, const char *str)
{
    char *errbuf;
    int errlen;

    errlen = regerror(reerr, pat, 0, 0);
    errbuf = bmake_malloc(errlen);
    regerror(reerr, pat, errbuf, errlen);
    Error("%s: %s", str, errbuf);
    free(errbuf);
}
