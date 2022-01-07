
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ocd_desc ;
 int serial_close (int *) ;

void
ocd_close (int quitting)
{
  if (ocd_desc)
    serial_close (ocd_desc);
  ocd_desc = ((void*)0);
}
