
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sysset_t ;
typedef int sigset_t ;
struct TYPE_3__ {long si_signo; } ;
typedef TYPE_1__ siginfo_t ;
typedef int fltset_t ;
struct TYPE_4__ {char* name; long value; char* desc; } ;
 int PRCFAULT ;
 int PRCSIG ;
 int PRFS_KOLC ;
 int PRFS_STOPEXEC ;
 int PRFS_STOPFORK ;
 int PRFS_STOPTCR ;
 int PRFS_STOPTERM ;
 int PRFS_STOPTTERM ;
 int PRSABORT ;
 int PRSFAULT ;
 int PRSHOLD ;
 int PRSTEP ;
 int PRSTOP ;
 int PRSTRACE ;
 int PRSVADDR ;
 int PR_ASYNC ;
 int PR_FORK ;
 int PR_RLC ;
 scalar_t__ errno ;
 int fflush (scalar_t__) ;
 int fprintf (scalar_t__,char*,...) ;
 scalar_t__ info_verbose ;
 int ioctl (int,long,void*) ;
 TYPE_2__* ioctl_table ;
 int prepare_to_trace () ;
 int proc_prettyfprint_faultset (scalar_t__,int *,int ) ;
 int proc_prettyfprint_signal (scalar_t__,long,int ) ;
 int proc_prettyfprint_signalset (scalar_t__,int *,int ) ;
 int proc_prettyfprint_syscalls (scalar_t__,int *,int ) ;
 scalar_t__ procfs_file ;
 scalar_t__ procfs_trace ;
 char* safe_strerror (scalar_t__) ;
 scalar_t__ stdout ;

int
ioctl_with_trace (int fd, long opcode, void *ptr, char *file, int line)
{
  int i = 0;
  int ret;
  int arg1;

  prepare_to_trace ();

  if (procfs_trace)
    {
      for (i = 0; ioctl_table[i].name != ((void*)0); i++)
 if (ioctl_table[i].value == opcode)
   break;

      if (info_verbose)
 fprintf (procfs_file ? procfs_file : stdout,
   "%s:%d -- ", file, line);
      switch (opcode) {
      case 134:
 arg1 = ptr ? *(long *) ptr : 0;
 fprintf (procfs_file ? procfs_file : stdout,
   "ioctl (PIOCSET,   %s) %s\n",
   arg1 == PR_FORK ? "PR_FORK" :
   arg1 == PR_RLC ? "PR_RLC" :



   "<unknown flag>",
   info_verbose ? ioctl_table[i].desc : "");
 break;
      case 137:
 arg1 = ptr ? *(long *) ptr : 0;
 fprintf (procfs_file ? procfs_file : stdout,
   "ioctl (PIOCRESET, %s) %s\n",
   arg1 == PR_FORK ? "PR_FORK" :
   arg1 == PR_RLC ? "PR_RLC" :



   "<unknown flag>",
   info_verbose ? ioctl_table[i].desc : "");
 break;
      case 128:
 fprintf (procfs_file ? procfs_file : stdout,
   "ioctl (PIOCSTRACE) ");
 proc_prettyfprint_signalset (procfs_file ? procfs_file : stdout,
         (sigset_t *) ptr, 0);
 break;
      case 132:
 fprintf (procfs_file ? procfs_file : stdout,
   "ioctl (%s) ",
   opcode == 132 ? "PIOCSFAULT" : "PIOCGFAULT");
 proc_prettyfprint_faultset (procfs_file ? procfs_file : stdout,
        (fltset_t *) ptr, 0);
 break;
      case 135:
 fprintf (procfs_file ? procfs_file : stdout,
   "ioctl (%s) ",
   opcode == 135 ? "PIOCSENTRY" : "PIOCGENTRY");
 proc_prettyfprint_syscalls (procfs_file ? procfs_file : stdout,
        (sysset_t *) ptr, 0);
 break;
      case 133:
 fprintf (procfs_file ? procfs_file : stdout,
   "ioctl (%s) ",
   opcode == 133 ? "PIOCSEXIT" : "PIOCGEXIT");
 proc_prettyfprint_syscalls (procfs_file ? procfs_file : stdout,
        (sysset_t *) ptr, 0);
 break;
      case 131:
 fprintf (procfs_file ? procfs_file : stdout,
   "ioctl (%s) ",
   opcode == 131 ? "PIOCSHOLD" : "PIOCGHOLD");
 proc_prettyfprint_signalset (procfs_file ? procfs_file : stdout,
         (sigset_t *) ptr, 0);
 break;
      case 130:
 fprintf (procfs_file ? procfs_file : stdout,
   "ioctl (PIOCSSIG) ");
 proc_prettyfprint_signal (procfs_file ? procfs_file : stdout,
      ptr ? ((siginfo_t *) ptr)->si_signo : 0,
      0);
 fprintf (procfs_file ? procfs_file : stdout, "\n");
 break;
      case 136:
 fprintf (procfs_file ? procfs_file : stdout,
   "ioctl (PIOCRUN) ");

 arg1 = ptr ? *(long *) ptr : 0;
 if (arg1 & PRCSIG)
   fprintf (procfs_file ? procfs_file : stdout, "clearSig ");
 if (arg1 & PRCFAULT)
   fprintf (procfs_file ? procfs_file : stdout, "clearFlt ");
 if (arg1 & PRSTRACE)
   fprintf (procfs_file ? procfs_file : stdout, "setTrace ");
 if (arg1 & PRSHOLD)
   fprintf (procfs_file ? procfs_file : stdout, "setHold ");
 if (arg1 & PRSFAULT)
   fprintf (procfs_file ? procfs_file : stdout, "setFlt ");
 if (arg1 & PRSVADDR)
   fprintf (procfs_file ? procfs_file : stdout, "setVaddr ");
 if (arg1 & PRSTEP)
   fprintf (procfs_file ? procfs_file : stdout, "step ");
 if (arg1 & PRSABORT)
   fprintf (procfs_file ? procfs_file : stdout, "syscallAbort ");
 if (arg1 & PRSTOP)
   fprintf (procfs_file ? procfs_file : stdout, "stopReq ");

 fprintf (procfs_file ? procfs_file : stdout, "\n");
 break;
      case 138:
 fprintf (procfs_file ? procfs_file : stdout,
   "ioctl (PIOCKILL) ");
 proc_prettyfprint_signal (procfs_file ? procfs_file : stdout,
      ptr ? *(long *) ptr : 0, 0);
 fprintf (procfs_file ? procfs_file : stdout, "\n");
 break;

      case 129:
 fprintf (procfs_file ? procfs_file : stdout,
   "ioctl (PIOCSSPCACT) ");
 arg1 = ptr ? *(long *) ptr : 0;
 if (arg1 & PRFS_STOPFORK)
   fprintf (procfs_file ? procfs_file : stdout, "stopFork ");
 if (arg1 & PRFS_STOPEXEC)
   fprintf (procfs_file ? procfs_file : stdout, "stopExec ");
 if (arg1 & PRFS_STOPTERM)
   fprintf (procfs_file ? procfs_file : stdout, "stopTerm ");
 if (arg1 & PRFS_STOPTCR)
   fprintf (procfs_file ? procfs_file : stdout, "stopThreadCreate ");
 if (arg1 & PRFS_STOPTTERM)
   fprintf (procfs_file ? procfs_file : stdout, "stopThreadTerm ");
 if (arg1 & PRFS_KOLC)
   fprintf (procfs_file ? procfs_file : stdout, "killOnLastClose ");
 fprintf (procfs_file ? procfs_file : stdout, "\n");
 break;

      default:
 if (ioctl_table[i].name)
   fprintf (procfs_file ? procfs_file : stdout,
     "ioctl (%s) %s\n",
     ioctl_table[i].name,
     info_verbose ? ioctl_table[i].desc : "");
 else
   fprintf (procfs_file ? procfs_file : stdout,
     "ioctl (<unknown %ld (0x%lx)) \n", opcode, opcode);
 break;
      }
      if (procfs_file)
 fflush (procfs_file);
    }
  errno = 0;
  ret = ioctl (fd, opcode, ptr);
  if (procfs_trace && ret < 0)
    {
      fprintf (procfs_file ? procfs_file : stdout,
        "[ioctl (%s) FAILED! (%s)]\n",
        ioctl_table[i].name != ((void*)0) ?
        ioctl_table[i].name : "<unknown>",
        safe_strerror (errno));
      if (procfs_file)
 fflush (procfs_file);
    }

  return ret;
}
