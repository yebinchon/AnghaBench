
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_state {int pass_exception; } ;


 int EINVAL ;
 int error_packet (int ,int ) ;
 scalar_t__ kgdb_connected ;
 char* remcom_in_buffer ;
 int remcom_out_buffer ;
 int remove_all_break () ;

__attribute__((used)) static int gdb_cmd_exception_pass(struct kgdb_state *ks)
{



 if (remcom_in_buffer[1] == '0' && remcom_in_buffer[2] == '9') {

  ks->pass_exception = 1;
  remcom_in_buffer[0] = 'c';

 } else if (remcom_in_buffer[1] == '1' && remcom_in_buffer[2] == '5') {

  ks->pass_exception = 1;
  remcom_in_buffer[0] = 'D';
  remove_all_break();
  kgdb_connected = 0;
  return 1;

 } else {
  error_packet(remcom_out_buffer, -EINVAL);
  return 0;
 }


 return -1;
}
