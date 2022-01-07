
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int section_map_func ;
typedef int buffer ;
typedef int bfd ;


 scalar_t__ bfd_check_format (int *,int ) ;
 scalar_t__ bfd_get_start_address (int *) ;
 int bfd_map_over_sections (int *,int ,...) ;
 int bfd_object ;
 int * bfd_openr (char*,int ) ;
 int clear_symtab_users () ;
 scalar_t__ count_section ;
 int error (char*,...) ;
 int ethernet ;
 int * exec_bfd ;
 char* get_exec_file (int) ;
 int ignore_packet () ;
 int inferior_ptid ;
 scalar_t__ load_section ;
 int monitor_expect_prompt (int *,int ) ;
 int monitor_printf (char*) ;
 int null_ptid ;
 int orig_monitor_load (char*,int) ;
 int printf_filtered (char*,long) ;
 int process_read_request (unsigned char*,int) ;
 int report_transfer_performance (unsigned int,int ,int ) ;
 int send_packet (char,char*,int ,int ) ;
 int time (int *) ;
 int write_long (unsigned char*,long) ;
 int write_pc (scalar_t__) ;

__attribute__((used)) static void
r3900_load (char *filename, int from_tty)
{
  bfd *abfd;
  unsigned int data_count = 0;
  time_t start_time, end_time;
  int section_count = 0;
  unsigned char buffer[8];



  if (!ethernet)
    {
      orig_monitor_load (filename, from_tty);
      return;
    }


  if (filename == ((void*)0) || filename[0] == 0)
    filename = get_exec_file (1);
  abfd = bfd_openr (filename, 0);
  if (!abfd)
    error ("Unable to open file %s\n", filename);
  if (bfd_check_format (abfd, bfd_object) == 0)
    error ("File is not an object file\n");




  monitor_printf ("vconsi\r");
  ignore_packet ();
  monitor_expect_prompt (((void*)0), 0);



  monitor_printf ("Rm\r");
  ignore_packet ();
  send_packet ('a', "", 0, 0);


  bfd_map_over_sections ((bfd *) abfd, (section_map_func) count_section,
    &section_count);
  write_long (&buffer[0], (long) section_count);
  if (exec_bfd)
    write_long (&buffer[4], (long) bfd_get_start_address (exec_bfd));
  else
    write_long (&buffer[4], 0);
  process_read_request (buffer, sizeof (buffer));


  start_time = time (((void*)0));
  bfd_map_over_sections (abfd, (section_map_func) load_section, &data_count);
  end_time = time (((void*)0));



  ignore_packet ();
  send_packet ('a', "", 0, 0);
  monitor_expect_prompt (((void*)0), 0);
  monitor_printf ("vconsx\r");
  monitor_expect_prompt (((void*)0), 0);


  printf_filtered ("Start address 0x%lx\n", (long) bfd_get_start_address (abfd));
  report_transfer_performance (data_count, start_time, end_time);


  if (exec_bfd)
    write_pc (bfd_get_start_address (exec_bfd));

  inferior_ptid = null_ptid;







  clear_symtab_users ();
}
