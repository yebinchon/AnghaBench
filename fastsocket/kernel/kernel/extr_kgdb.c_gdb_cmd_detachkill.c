
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_state {int dummy; } ;


 int error_packet (int ,int) ;
 scalar_t__ kgdb_connected ;
 int put_packet (int ) ;
 char* remcom_in_buffer ;
 int remcom_out_buffer ;
 int remove_all_break () ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void gdb_cmd_detachkill(struct kgdb_state *ks)
{
 int error;


 if (remcom_in_buffer[0] == 'D') {
  error = remove_all_break();
  if (error < 0) {
   error_packet(remcom_out_buffer, error);
  } else {
   strcpy(remcom_out_buffer, "OK");
   kgdb_connected = 0;
  }
  put_packet(remcom_out_buffer);
 } else {




  remove_all_break();
  kgdb_connected = 0;
 }
}
