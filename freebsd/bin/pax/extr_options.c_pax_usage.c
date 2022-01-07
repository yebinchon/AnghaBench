
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fputs (char*,int ) ;
 int stderr ;

void
pax_usage(void)
{
 (void)fputs("usage: pax [-cdnOvz] [-E limit] [-f archive] ", stderr);
 (void)fputs("[-s replstr] ... [-U user] ...", stderr);
 (void)fputs("\n	   [-G group] ... ", stderr);
 (void)fputs("[-T [from_date][,to_date]] ... ", stderr);
 (void)fputs("[pattern ...]\n", stderr);
 (void)fputs("       pax -r [-cdiknOuvzDYZ] [-E limit] ", stderr);
 (void)fputs("[-f archive] [-o options] ... \n", stderr);
 (void)fputs("	   [-p string] ... [-s replstr] ... ", stderr);
 (void)fputs("[-U user] ... [-G group] ...\n	   ", stderr);
 (void)fputs("[-T [from_date][,to_date]] ... ", stderr);
 (void)fputs(" [pattern ...]\n", stderr);
 (void)fputs("       pax -w [-dituvzHLOPX] [-b blocksize] ", stderr);
 (void)fputs("[ [-a] [-f archive] ] [-x format] \n", stderr);
 (void)fputs("	   [-B bytes] [-s replstr] ... ", stderr);
 (void)fputs("[-o options] ... [-U user] ...", stderr);
 (void)fputs("\n	   [-G group] ... ", stderr);
 (void)fputs("[-T [from_date][,to_date][/[c][m]]] ... ", stderr);
 (void)fputs("[file ...]\n", stderr);
 (void)fputs("       pax -r -w [-diklntuvDHLOPXYZ] ", stderr);
 (void)fputs("[-p string] ... [-s replstr] ...", stderr);
 (void)fputs("\n	   [-U user] ... [-G group] ... ", stderr);
 (void)fputs("[-T [from_date][,to_date][/[c][m]]] ... ", stderr);
 (void)fputs("\n	   [file ...] directory\n", stderr);
 exit(1);
}
