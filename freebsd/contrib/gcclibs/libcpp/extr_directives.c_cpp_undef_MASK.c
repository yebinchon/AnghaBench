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
typedef  int /*<<< orphan*/  cpp_reader ;

/* Variables and functions */
 int /*<<< orphan*/  T_UNDEF ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t) ; 
 size_t FUNC3 (char const*) ; 

void
FUNC4 (cpp_reader *pfile, const char *macro)
{
  size_t len = FUNC3 (macro);
  char *buf = (char *) FUNC0 (len + 1);
  FUNC1 (buf, macro, len);
  buf[len] = '\n';
  FUNC2 (pfile, T_UNDEF, buf, len);
}