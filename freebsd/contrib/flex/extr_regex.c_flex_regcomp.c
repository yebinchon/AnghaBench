
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regex_t ;


 char* _ (char*) ;
 scalar_t__ flex_alloc (int const) ;
 int flexfatal (char*) ;
 int free (char*) ;
 int memset (int *,int ,int) ;
 int regcomp (int *,char const*,int) ;
 int regerror (int,int *,char*,int const) ;
 int snprintf (char*,int const,char*,char const*,char*) ;

void flex_regcomp(regex_t *preg, const char *regex, int cflags)
{
    int err;

 memset (preg, 0, sizeof (regex_t));

 if ((err = regcomp (preg, regex, cflags)) != 0) {
        const int errbuf_sz = 200;
        char *errbuf, *rxerr;

  errbuf = (char*)flex_alloc(errbuf_sz *sizeof(char));
  if (!errbuf)
   flexfatal(_("Unable to allocate buffer to report regcomp"));
  rxerr = (char*)flex_alloc(errbuf_sz *sizeof(char));
  if (!rxerr)
   flexfatal(_("Unable to allocate buffer for regerror"));
  regerror (err, preg, rxerr, errbuf_sz);
  snprintf (errbuf, errbuf_sz, "regcomp for \"%s\" failed: %s", regex, rxerr);

  flexfatal (errbuf);
        free(errbuf);
        free(rxerr);
 }
}
