
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int ocd_desc ;
 int perror_with_name (char*) ;
 int serial_readchar (int ,int) ;

__attribute__((used)) static int
readchar (int timeout)
{
  int ch;

  ch = serial_readchar (ocd_desc, timeout);

  switch (ch)
    {
    case 130:
      error ("Remote connection closed");
    case 129:
      perror_with_name ("Remote communication error");
    case 128:
    default:
      return ch;
    }
}
