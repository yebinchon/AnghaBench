
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NUMDATALINES ;
 scalar_t__ dataline ;
 scalar_t__ datapos ;
 int gentables ;
 int outc (char) ;

void dataflush ()
{

 if (!gentables)
  return;

 outc ('\n');

 if (++dataline >= NUMDATALINES) {



  outc ('\n');
  dataline = 0;
 }


 datapos = 0;
}
