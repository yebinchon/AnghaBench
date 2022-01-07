
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_ACCMODE ;
 int O_APPEND ;
 int O_BINARY ;
 int O_NDELAY ;
 int O_NONBLOCK ;



 int gdb_has_a_terminal () ;
 int gdb_stdout ;
 scalar_t__ inferior_process_group ;
 int inferior_ttystate ;
 int printf_filtered (char*,...) ;
 int serial_print_tty_state (int ,int ,int ) ;
 int stdin_serial ;
 int tflags_inferior ;

void
child_terminal_info (char *args, int from_tty)
{
  if (!gdb_has_a_terminal ())
    {
      printf_filtered ("This GDB does not control a terminal.\n");
      return;
    }

  printf_filtered ("Inferior's terminal status (currently saved by GDB):\n");


  {
    int flags;

    flags = tflags_inferior;

    printf_filtered ("File descriptor flags = ");





    switch (flags & ((130 | 128 | 129)))
      {
      case 130:
 printf_filtered ("O_RDONLY");
 break;
      case 128:
 printf_filtered ("O_WRONLY");
 break;
      case 129:
 printf_filtered ("O_RDWR");
 break;
      }
    flags &= ~((130 | 128 | 129));
    if (flags & O_APPEND)
      printf_filtered (" | O_APPEND");
    flags &= ~O_APPEND;







    if (flags)
      printf_filtered (" | 0x%x", flags);
    printf_filtered ("\n");
  }






  serial_print_tty_state (stdin_serial, inferior_ttystate, gdb_stdout);
}
