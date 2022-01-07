
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_state {int dummy; } ;


 int error_packet (int ,int) ;
 int remcom_out_buffer ;
 int strcpy (int ,char*) ;
 int write_mem_msg (int) ;

__attribute__((used)) static void gdb_cmd_binwrite(struct kgdb_state *ks)
{
 int err = write_mem_msg(1);

 if (err)
  error_packet(remcom_out_buffer, err);
 else
  strcpy(remcom_out_buffer, "OK");
}
