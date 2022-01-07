
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_stderr ;
 int monitor_desc ;
 int safe_strerror (int ) ;
 scalar_t__ serial_write (int ,char*,int) ;

void
monitor_write (char *buf, int buflen)
{
  if (serial_write (monitor_desc, buf, buflen))
    fprintf_unfiltered (gdb_stderr, "serial_write failed: %s\n",
   safe_strerror (errno));
}
