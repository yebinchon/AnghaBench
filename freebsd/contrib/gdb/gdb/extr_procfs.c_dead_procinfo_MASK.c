#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* pathname; int pid; } ;
typedef  TYPE_1__ procinfo ;

/* Variables and functions */
 int KILL ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC5 (procinfo *pi, char *msg, int kill_p)
{
  char procfile[80];

  if (pi->pathname)
    {
      FUNC3 (pi->pathname, errno);
    }
  else
    {
      FUNC4 (procfile, "process %d", pi->pid);
      FUNC3 (procfile, errno);
    }
  if (kill_p == KILL)
    FUNC2 (pi->pid, SIGKILL);

  FUNC0 (pi);
  FUNC1 (msg);
}