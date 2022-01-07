
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
typedef enum ocd_target_type { ____Placeholder_ocd_target_type } ocd_target_type ;


 int RETURN_MASK_ALL ;
 int baud_rate ;
 int catch_errors (int ,int*,char*,int ) ;
 struct target_ops* current_ops ;
 int error (char*) ;
 int inferior_ptid ;
 int ocd_desc ;
 int ocd_start_remote ;
 int perror_with_name (char*) ;
 int pid_to_ptid (int) ;
 int pop_target () ;
 int push_target (struct target_ops*) ;
 int puts_filtered (char*) ;
 int serial_close (int ) ;
 int serial_flush_input (int ) ;
 int serial_open (char*) ;
 int serial_raw (int ) ;
 scalar_t__ serial_setbaudrate (int ,int) ;
 int target_preopen (int) ;
 int unpush_target (struct target_ops*) ;

void
ocd_open (char *name, int from_tty, enum ocd_target_type target_type,
   struct target_ops *ops)
{
  unsigned char buf[10], *p;
  int pktlen;

  if (name == 0)
    error ("To open an OCD connection, you need to specify the\ndevice the OCD device is attached to (e.g. /dev/ttya).");


  target_preopen (from_tty);

  current_ops = ops;

  unpush_target (current_ops);

  ocd_desc = serial_open (name);
  if (!ocd_desc)
    perror_with_name (name);

  if (baud_rate != -1)
    {
      if (serial_setbaudrate (ocd_desc, baud_rate))
 {
   serial_close (ocd_desc);
   perror_with_name (name);
 }
    }

  serial_raw (ocd_desc);



  serial_flush_input (ocd_desc);

  if (from_tty)
    {
      puts_filtered ("Remote target wiggler connected to ");
      puts_filtered (name);
      puts_filtered ("\n");
    }
  push_target (current_ops);
  inferior_ptid = pid_to_ptid (42000);



  if (!catch_errors (ocd_start_remote, &target_type,
       "Couldn't establish connection to remote target\n",
       RETURN_MASK_ALL))
    {
      pop_target ();
      error ("Failed to connect to OCD.");
    }
}
