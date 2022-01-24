#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t cur; size_t base; int /*<<< orphan*/  first_line; } ;
struct TYPE_8__ {TYPE_1__ out; } ;
typedef  TYPE_2__ cpp_reader ;
struct TYPE_9__ {int printed; int /*<<< orphan*/  outf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  discard_comments ; 
 int /*<<< orphan*/  FUNC3 (size_t,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__ print ; 

__attribute__((used)) static void
FUNC5 (cpp_reader *pfile)
{
  while (FUNC1 (pfile))
    {
      size_t len = pfile->out.cur - pfile->out.base;
      FUNC4 (pfile->out.first_line);
      FUNC3 (pfile->out.base, 1, len, print.outf);
      print.printed = 1;
      if (!FUNC0 (pfile, discard_comments))
	FUNC2 (pfile->out.base, len);
    }
}