
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pst_status {char* pst_cmd; } ;
typedef int pid_t ;
typedef int exec_file_buffer ;


 int TT_PROC_GET_PATHNAME ;
 int call_ttrace (int ,int,int ,int,int ) ;
 int pstat_getproc (struct pst_status*,int,int ,int) ;

char *
child_pid_to_exec_file (int tid)
{
  int tt_status;
  static char exec_file_buffer[1024];
  pid_t pid;
  static struct pst_status buf;




  tt_status = call_ttrace (TT_PROC_GET_PATHNAME,
      tid,
      (uint64_t) exec_file_buffer,
      sizeof (exec_file_buffer) - 1,
      0);
  if (tt_status >= 0)
    return exec_file_buffer;



  if (pstat_getproc (&buf, sizeof (struct pst_status), 0, tid) != -1)
    {
      char *p = buf.pst_cmd;

      while (*p && *p != ' ')
 p++;
      *p = 0;

      return (buf.pst_cmd);
    }

  return (((void*)0));
}
