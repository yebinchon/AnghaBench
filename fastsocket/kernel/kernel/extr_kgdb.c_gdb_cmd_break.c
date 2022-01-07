
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kgdb_state {int dummy; } ;
struct TYPE_2__ {int (* set_hw_breakpoint ) (unsigned long,int,char) ;int flags; int (* remove_hw_breakpoint ) (unsigned long,int,char) ;} ;


 int EINVAL ;
 int KGDB_HW_BREAKPOINT ;
 TYPE_1__ arch_kgdb_ops ;
 int error_packet (int ,int) ;
 int kgdb_hex2long (char**,unsigned long*) ;
 int kgdb_remove_sw_break (unsigned long) ;
 int kgdb_set_sw_break (unsigned long) ;
 char* remcom_in_buffer ;
 int remcom_out_buffer ;
 int strcpy (int ,char*) ;
 int stub1 (unsigned long,int,char) ;
 int stub2 (unsigned long,int,char) ;

__attribute__((used)) static void gdb_cmd_break(struct kgdb_state *ks)
{




 char *bpt_type = &remcom_in_buffer[1];
 char *ptr = &remcom_in_buffer[2];
 unsigned long addr;
 unsigned long length;
 int error = 0;

 if (arch_kgdb_ops.set_hw_breakpoint && *bpt_type >= '1') {

  if (*bpt_type > '4')
   return;
 } else {
  if (*bpt_type != '0' && *bpt_type != '1')

   return;
 }





 if (*bpt_type == '1' && !(arch_kgdb_ops.flags & KGDB_HW_BREAKPOINT))

  return;

 if (*(ptr++) != ',') {
  error_packet(remcom_out_buffer, -EINVAL);
  return;
 }
 if (!kgdb_hex2long(&ptr, &addr)) {
  error_packet(remcom_out_buffer, -EINVAL);
  return;
 }
 if (*(ptr++) != ',' ||
  !kgdb_hex2long(&ptr, &length)) {
  error_packet(remcom_out_buffer, -EINVAL);
  return;
 }

 if (remcom_in_buffer[0] == 'Z' && *bpt_type == '0')
  error = kgdb_set_sw_break(addr);
 else if (remcom_in_buffer[0] == 'z' && *bpt_type == '0')
  error = kgdb_remove_sw_break(addr);
 else if (remcom_in_buffer[0] == 'Z')
  error = arch_kgdb_ops.set_hw_breakpoint(addr,
   (int)length, *bpt_type - '0');
 else if (remcom_in_buffer[0] == 'z')
  error = arch_kgdb_ops.remove_hw_breakpoint(addr,
   (int) length, *bpt_type - '0');

 if (error == 0)
  strcpy(remcom_out_buffer, "OK");
 else
  error_packet(remcom_out_buffer, error);
}
