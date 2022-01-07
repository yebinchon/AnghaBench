
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CodaFid {int* opaque; } ;


 int sprintf (char*,char*,int,int,int,int) ;

char * coda_f2s(struct CodaFid *f)
{
 static char s[60];

  sprintf(s, "(%08x.%08x.%08x.%08x)", f->opaque[0], f->opaque[1], f->opaque[2], f->opaque[3]);

 return s;
}
