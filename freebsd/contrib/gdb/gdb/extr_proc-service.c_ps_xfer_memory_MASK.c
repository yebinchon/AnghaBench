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
struct ps_prochandle {int /*<<< orphan*/  pid; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  ps_err_e ;
typedef  int /*<<< orphan*/  paddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PS_ERR ; 
 int /*<<< orphan*/  PS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static ps_err_e
FUNC5 (const struct ps_prochandle *ph, paddr_t addr,
		char *buf, size_t len, int write)
{
  struct cleanup *old_chain = FUNC2 ();
  int ret;

  inferior_ptid = FUNC1 (ph->pid);

  if (write)
    ret = FUNC4 (addr, buf, len);
  else
    ret = FUNC3 (addr, buf, len);

  FUNC0 (old_chain);

  return (ret == 0 ? PS_OK : PS_ERR);
}