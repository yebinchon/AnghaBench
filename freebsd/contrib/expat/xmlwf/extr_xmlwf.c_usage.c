
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XML_Char ;


 int T (char*) ;
 int exit (int) ;
 int ftprintf (int ,int ,int const*) ;
 int stderr ;

__attribute__((used)) static void
usage(const XML_Char *prog, int rc)
{
  ftprintf(stderr,
           T("usage: %s [-s] [-n] [-p] [-x] [-e encoding] [-w] [-d output-dir] [-c] [-m] [-r] [-t] [-N] [file ...]\n"), prog);
  exit(rc);
}
