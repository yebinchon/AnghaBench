
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dataflush () ;
 scalar_t__ dataline ;
 scalar_t__ datapos ;
 scalar_t__ gentables ;
 int outn (char*) ;

void dataend ()
{

 if (gentables) {

  if (datapos > 0)
   dataflush ();


  outn ("    } ;\n");
 }
 dataline = 0;
 datapos = 0;
}
