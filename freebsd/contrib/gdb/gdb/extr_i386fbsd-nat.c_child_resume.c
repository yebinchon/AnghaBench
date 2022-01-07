
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef int pid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
typedef int caddr_t ;
typedef int ULONGEST ;


 int I386_EFLAGS_REGNUM ;
 int PT_CONTINUE ;
 int PT_STEP ;
 int current_regcache ;
 int inferior_ptid ;
 int perror_with_name (char*) ;
 int ptid_get_pid (int ) ;
 int ptrace (int,int,int ,int ) ;
 int regcache_cooked_read_unsigned (int ,int ,int*) ;
 int regcache_cooked_write_unsigned (int ,int ,int) ;
 int target_signal_to_host (int) ;

void
child_resume (ptid_t ptid, int step, enum target_signal signal)
{
  pid_t pid = ptid_get_pid (ptid);
  int request = PT_STEP;

  if (pid == -1)



    pid = ptid_get_pid (inferior_ptid);

  if (!step)
    {
      ULONGEST eflags;
      regcache_cooked_read_unsigned (current_regcache, I386_EFLAGS_REGNUM,
         &eflags);
      if (eflags & 0x0100)
 regcache_cooked_write_unsigned (current_regcache, I386_EFLAGS_REGNUM,
     eflags & ~0x0100);

      request = PT_CONTINUE;
    }




  if (ptrace (request, pid, (caddr_t) 1,
       target_signal_to_host (signal)) == -1)
    perror_with_name ("ptrace");
}
