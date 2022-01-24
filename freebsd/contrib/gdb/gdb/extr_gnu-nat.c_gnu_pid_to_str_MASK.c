#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct proc {int dummy; } ;
struct inf {int dummy; } ;
typedef  int /*<<< orphan*/  ptid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct inf* current_inferior ; 
 struct proc* FUNC1 (struct inf*,int) ; 
 char* FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC4 (ptid_t ptid)
{
  struct inf *inf = current_inferior;
  int tid = FUNC0 (ptid);
  struct proc *thread = FUNC1 (inf, tid);

  if (thread)
    return FUNC2 (thread);
  else
    {
      static char tid_str[80];
      FUNC3 (tid_str, "bogus thread id %d", tid);
      return tid_str;
    }
}