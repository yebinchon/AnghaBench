
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * breakaddr ;
 int * monitor_desc ;
 int serial_close (int *) ;
 int xfree (int *) ;

void
monitor_close (int quitting)
{
  if (monitor_desc)
    serial_close (monitor_desc);


  if (breakaddr != ((void*)0))
    {
      xfree (breakaddr);
      breakaddr = ((void*)0);
    }

  monitor_desc = ((void*)0);
}
