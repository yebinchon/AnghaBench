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
struct nlist {char* n_name; scalar_t__ n_scnum; int /*<<< orphan*/  n_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  kernel_u_addr ; 
 scalar_t__ FUNC1 (char*,struct nlist*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3 (void)
{
  struct nlist nl[2];

  nl[0].n_name = "u";
  nl[1].n_name = NULL;
  if (FUNC1 ("/sysV68", nl) == 0 && nl[0].n_scnum != 0)
    kernel_u_addr = nl[0].n_value;
  else
    {
      FUNC2 ("Cannot get kernel u area address");
      FUNC0 (1);
    }
}