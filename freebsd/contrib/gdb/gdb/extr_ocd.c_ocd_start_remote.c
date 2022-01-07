
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ocd_target_type { ____Placeholder_ocd_target_type } ocd_target_type ;


 int OCD_AYT ;
 int OCD_FLAG_BDM ;
 int OCD_GET_VERSION ;
 unsigned char OCD_INIT ;
 unsigned char OCD_LOG_FILE ;
 unsigned char OCD_SET_CTL_FLAGS ;
 int error (char*) ;
 int flush_cached_frames () ;
 int get_selected_frame () ;
 int immediate_quit ;
 int ocd_desc ;
 unsigned char* ocd_do_command (int ,int*,int*) ;
 int ocd_error (char*,int) ;
 unsigned char* ocd_get_packet (unsigned char,int*,int ) ;
 int ocd_put_packet (unsigned char*,int) ;
 int ocd_stop () ;
 int print_stack_frame (int ,int,int) ;
 int printf_unfiltered (char*,unsigned char,unsigned char,unsigned char) ;
 int read_pc () ;
 int registers_changed () ;
 int remote_timeout ;
 int serial_send_break (int ) ;
 int stop_pc ;

__attribute__((used)) static int
ocd_start_remote (void *dummy)
{
  unsigned char buf[10], *p;
  int pktlen;
  int status;
  int error_code;
  int speed;
  enum ocd_target_type target_type;

  target_type = *(enum ocd_target_type *) dummy;

  immediate_quit++;

  serial_send_break (ocd_desc);

  speed = 80;

  buf[0] = OCD_INIT;
  buf[1] = speed >> 8;
  buf[2] = speed & 0xff;
  buf[3] = target_type;
  ocd_put_packet (buf, 4);
  p = ocd_get_packet (buf[0], &pktlen, remote_timeout);

  if (pktlen < 2)
    error ("Truncated response packet from OCD device");

  status = p[1];
  error_code = p[2];

  if (error_code != 0)
    ocd_error ("OCD_INIT:", error_code);

  ocd_do_command (OCD_AYT, &status, &pktlen);

  p = ocd_do_command (OCD_GET_VERSION, &status, &pktlen);

  printf_unfiltered ("[Wiggler version %x.%x, capability 0x%x]\n",
       p[0], p[1], (p[2] << 16) | p[3]);



  if (!(status & OCD_FLAG_BDM))
    ocd_stop ();




  buf[0] = OCD_SET_CTL_FLAGS;
  buf[1] = 0;
  buf[2] = 1;
  ocd_put_packet (buf, 3);

  p = ocd_get_packet (buf[0], &pktlen, remote_timeout);

  if (pktlen < 2)
    error ("Truncated response packet from OCD device");

  status = p[1];
  error_code = p[2];

  if (error_code != 0)
    ocd_error ("OCD_SET_CTL_FLAGS:", error_code);

  immediate_quit--;






  flush_cached_frames ();
  registers_changed ();
  stop_pc = read_pc ();
  print_stack_frame (get_selected_frame (), -1, 1);

  buf[0] = OCD_LOG_FILE;
  buf[1] = 3;
  ocd_put_packet (buf, 2);
  p = ocd_get_packet (buf[0], &pktlen, remote_timeout);

  buf[0] = OCD_LOG_FILE;
  buf[1] = 2;
  ocd_put_packet (buf, 2);
  p = ocd_get_packet (buf[0], &pktlen, remote_timeout);

  return 1;
}
