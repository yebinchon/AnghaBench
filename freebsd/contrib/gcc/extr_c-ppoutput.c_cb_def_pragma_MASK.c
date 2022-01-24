#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  source_location ;
typedef  int /*<<< orphan*/  cpp_reader ;
struct TYPE_2__ {int /*<<< orphan*/  src_line; int /*<<< orphan*/  outf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ print ; 

__attribute__((used)) static void
FUNC3 (cpp_reader *pfile, source_location line)
{
  FUNC2 (line);
  FUNC1 ("#pragma ", print.outf);
  FUNC0 (pfile, print.outf);
  print.src_line++;
}