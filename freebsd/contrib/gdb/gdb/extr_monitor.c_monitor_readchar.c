
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_TIMEOUT ;
 int error (char*) ;
 int monitor_desc ;
 int perror_with_name (char*) ;
 int serial_readchar (int ,int ) ;
 int timeout ;

int
monitor_readchar (void)
{
  int c;
  int looping;

  do
    {
      looping = 0;
      c = serial_readchar (monitor_desc, timeout);

      if (c >= 0)
 c &= 0xff;
    }
  while (looping);

  if (c >= 0)
    return c;

  if (c == SERIAL_TIMEOUT)
    error ("Timeout reading from remote system.");

  perror_with_name ("remote-monitor");
}
