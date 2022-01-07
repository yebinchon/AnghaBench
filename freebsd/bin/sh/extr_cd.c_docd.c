
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE (char*) ;
 int cdlogical (char*) ;
 int cdphysical (char*) ;
 scalar_t__ curdir ;
 int flushout (int ) ;
 scalar_t__ iflag ;
 int out1 ;
 int out1fmt (char*,scalar_t__) ;
 int outclearerror (int ) ;

__attribute__((used)) static int
docd(char *dest, int print, int phys)
{
 int rc;

 TRACE(("docd(\"%s\", %d, %d) called\n", dest, print, phys));


 if ((phys || (rc = cdlogical(dest)) < 0) && (rc = cdphysical(dest)) < 0)
  return (-1);

 if (print && iflag && curdir) {
  out1fmt("%s\n", curdir);






  flushout(out1);
  outclearerror(out1);
 }

 return (rc);
}
