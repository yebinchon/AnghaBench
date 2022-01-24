#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sysset_t ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_3__ {long si_signo; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  int /*<<< orphan*/  fltset_t ;
struct TYPE_4__ {char* name; long value; char* desc; } ;

/* Variables and functions */
#define  PIOCKILL 138 
#define  PIOCRESET 137 
#define  PIOCRUN 136 
#define  PIOCSENTRY 135 
#define  PIOCSET 134 
#define  PIOCSEXIT 133 
#define  PIOCSFAULT 132 
#define  PIOCSHOLD 131 
#define  PIOCSSIG 130 
#define  PIOCSSPCACT 129 
#define  PIOCSTRACE 128 
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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,...) ; 
 scalar_t__ info_verbose ; 
 int FUNC2 (int,long,void*) ; 
 TYPE_2__* ioctl_table ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ procfs_file ; 
 scalar_t__ procfs_trace ; 
 char* FUNC8 (scalar_t__) ; 
 scalar_t__ stdout ; 

int
FUNC9 (int fd, long opcode, void *ptr, char *file, int line)
{
  int i = 0;
  int ret;
  int arg1;

  FUNC3 ();

  if (procfs_trace)
    {
      for (i = 0; ioctl_table[i].name != NULL; i++)
	if (ioctl_table[i].value == opcode)
	  break;

      if (info_verbose)
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "%s:%d -- ", file, line);
      switch (opcode) {
      case PIOCSET:
	arg1 = ptr ? *(long *) ptr : 0;
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "ioctl (PIOCSET,   %s) %s\n", 
		 arg1 == PR_FORK  ? "PR_FORK"  :
		 arg1 == PR_RLC   ? "PR_RLC"   :
#ifdef PR_ASYNC
		 arg1 == PR_ASYNC ? "PR_ASYNC" :
#endif
		 "<unknown flag>",
		 info_verbose ? ioctl_table[i].desc : "");
	break;
      case PIOCRESET:
	arg1 = ptr ? *(long *) ptr : 0;
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "ioctl (PIOCRESET, %s) %s\n", 
		 arg1 == PR_FORK  ? "PR_FORK"  :
		 arg1 == PR_RLC   ? "PR_RLC"   :
#ifdef PR_ASYNC
		 arg1 == PR_ASYNC ? "PR_ASYNC" :
#endif
		 "<unknown flag>",
		 info_verbose ? ioctl_table[i].desc : "");
	break;
      case PIOCSTRACE:
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "ioctl (PIOCSTRACE) ");
	FUNC6 (procfs_file ? procfs_file : stdout,
				     (sigset_t *) ptr, 0);
	break;
      case PIOCSFAULT:
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "ioctl (%s) ", 
		 opcode == PIOCSFAULT ? "PIOCSFAULT" : "PIOCGFAULT");
	FUNC4 (procfs_file ? procfs_file : stdout,
				    (fltset_t *) ptr, 0);
	break;
      case PIOCSENTRY:
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "ioctl (%s) ", 
		 opcode == PIOCSENTRY ? "PIOCSENTRY" : "PIOCGENTRY");
	FUNC7 (procfs_file ? procfs_file : stdout,
				    (sysset_t *) ptr, 0);
	break;
      case PIOCSEXIT:
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "ioctl (%s) ", 
		 opcode == PIOCSEXIT ? "PIOCSEXIT" : "PIOCGEXIT");
	FUNC7 (procfs_file ? procfs_file : stdout,
				    (sysset_t *) ptr, 0);
	break;
      case PIOCSHOLD:
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "ioctl (%s) ", 
		 opcode == PIOCSHOLD ? "PIOCSHOLD" : "PIOCGHOLD");
	FUNC6 (procfs_file ? procfs_file : stdout,
				     (sigset_t *) ptr, 0);
	break;
      case PIOCSSIG:
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "ioctl (PIOCSSIG) ");
	FUNC5 (procfs_file ? procfs_file : stdout,
				  ptr ? ((siginfo_t *) ptr)->si_signo : 0, 
				  0);
	FUNC1 (procfs_file ? procfs_file : stdout, "\n");
	break;
      case PIOCRUN:
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "ioctl (PIOCRUN) ");
	
	arg1 = ptr ? *(long *) ptr : 0;
	if (arg1 & PRCSIG)
	  FUNC1 (procfs_file ? procfs_file : stdout, "clearSig ");
	if (arg1 & PRCFAULT)
	  FUNC1 (procfs_file ? procfs_file : stdout, "clearFlt ");
	if (arg1 & PRSTRACE)
	  FUNC1 (procfs_file ? procfs_file : stdout, "setTrace ");
	if (arg1 & PRSHOLD)
	  FUNC1 (procfs_file ? procfs_file : stdout, "setHold ");
	if (arg1 & PRSFAULT)
	  FUNC1 (procfs_file ? procfs_file : stdout, "setFlt ");
	if (arg1 & PRSVADDR)
	  FUNC1 (procfs_file ? procfs_file : stdout, "setVaddr ");
	if (arg1 & PRSTEP)
	  FUNC1 (procfs_file ? procfs_file : stdout, "step ");
	if (arg1 & PRSABORT)
	  FUNC1 (procfs_file ? procfs_file : stdout, "syscallAbort ");
	if (arg1 & PRSTOP)
	  FUNC1 (procfs_file ? procfs_file : stdout, "stopReq ");
	  
	FUNC1 (procfs_file ? procfs_file : stdout, "\n");
	break;
      case PIOCKILL:
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "ioctl (PIOCKILL) ");
	FUNC5 (procfs_file ? procfs_file : stdout,
				  ptr ? *(long *) ptr : 0, 0);
	FUNC1 (procfs_file ? procfs_file : stdout, "\n");
	break;
#ifdef PIOCSSPCACT
      case PIOCSSPCACT:
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "ioctl (PIOCSSPCACT) ");
	arg1 = ptr ? *(long *) ptr : 0;
	if (arg1 & PRFS_STOPFORK)
	  FUNC1 (procfs_file ? procfs_file : stdout, "stopFork ");
	if (arg1 & PRFS_STOPEXEC)
	  FUNC1 (procfs_file ? procfs_file : stdout, "stopExec ");
	if (arg1 & PRFS_STOPTERM)
	  FUNC1 (procfs_file ? procfs_file : stdout, "stopTerm ");
	if (arg1 & PRFS_STOPTCR)
	  FUNC1 (procfs_file ? procfs_file : stdout, "stopThreadCreate ");
	if (arg1 & PRFS_STOPTTERM)
	  FUNC1 (procfs_file ? procfs_file : stdout, "stopThreadTerm ");
	if (arg1 & PRFS_KOLC)
	  FUNC1 (procfs_file ? procfs_file : stdout, "killOnLastClose ");
	FUNC1 (procfs_file ? procfs_file : stdout, "\n");
	break;
#endif /* PIOCSSPCACT */
      default:
	if (ioctl_table[i].name)
	  FUNC1 (procfs_file ? procfs_file : stdout, 
		   "ioctl (%s) %s\n", 
		   ioctl_table[i].name,
		   info_verbose ? ioctl_table[i].desc : "");
	else
	  FUNC1 (procfs_file ? procfs_file : stdout, 
		   "ioctl (<unknown %ld (0x%lx)) \n", opcode, opcode);
	break;
      }
      if (procfs_file)
	FUNC0 (procfs_file);
    }
  errno = 0;
  ret = FUNC2 (fd, opcode, ptr);
  if (procfs_trace && ret < 0)
    {
      FUNC1 (procfs_file ? procfs_file : stdout, 
	       "[ioctl (%s) FAILED! (%s)]\n",
	       ioctl_table[i].name != NULL ? 
	       ioctl_table[i].name : "<unknown>",
	       FUNC8 (errno));
      if (procfs_file)
	FUNC0 (procfs_file);
    }

  return ret;
}