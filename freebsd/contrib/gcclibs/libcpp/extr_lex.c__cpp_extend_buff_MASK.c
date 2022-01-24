#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cpp_reader ;
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  cur; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ _cpp_buff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (TYPE_1__*,size_t) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4 (cpp_reader *pfile, _cpp_buff **pbuff, size_t min_extra)
{
  _cpp_buff *new_buff, *old_buff = *pbuff;
  size_t size = FUNC1 (old_buff, min_extra);

  new_buff = FUNC2 (pfile, size);
  FUNC3 (new_buff->base, old_buff->cur, FUNC0 (old_buff));
  new_buff->next = old_buff;
  *pbuff = new_buff;
}