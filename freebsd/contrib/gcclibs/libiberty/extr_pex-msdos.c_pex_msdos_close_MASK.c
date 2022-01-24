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
struct pex_obj {scalar_t__ sysdep; } ;
struct pex_msdos {int /*<<< orphan*/ ** files; } ;

/* Variables and functions */
 size_t fdindex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (struct pex_msdos*,int) ; 

__attribute__((used)) static int
FUNC2 (struct pex_obj *obj, int fd)
{
  struct pex_msdos *ms;
  int fdinex;

  ms = (struct pex_msdos *) obj->sysdep;
  fdindex = FUNC1 (ms, fd);
  FUNC0 (ms->files[fdindex]);
  ms->files[fdindex] = NULL;
}