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
struct coff_sfile {int dummy; } ;
struct coff_ofile {scalar_t__ sections; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct coff_sfile*) ; 

__attribute__((used)) static void
FUNC1 (struct coff_ofile *p, struct coff_sfile *sfile)
{
  FUNC0 (p->sections + 4, sfile);
}