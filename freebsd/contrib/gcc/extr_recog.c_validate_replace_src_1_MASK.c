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
struct validate_replace_src_data {int /*<<< orphan*/  insn; int /*<<< orphan*/  to; int /*<<< orphan*/  from; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (rtx *x, void *data)
{
  struct validate_replace_src_data *d
    = (struct validate_replace_src_data *) data;

  FUNC0 (x, d->from, d->to, d->insn);
}