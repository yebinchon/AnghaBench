
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kgdb_state {int threadid; int linux_regs; } ;


 int EINVAL ;
 int error_packet (int ,int ) ;
 struct task_struct* getthread (int ,int ) ;
 int kgdb_hex2long (char**,int *) ;
 char* remcom_in_buffer ;
 int remcom_out_buffer ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void gdb_cmd_thread(struct kgdb_state *ks)
{
 char *ptr = &remcom_in_buffer[1];
 struct task_struct *thread;

 kgdb_hex2long(&ptr, &ks->threadid);
 thread = getthread(ks->linux_regs, ks->threadid);
 if (thread)
  strcpy(remcom_out_buffer, "OK");
 else
  error_packet(remcom_out_buffer, -EINVAL);
}
