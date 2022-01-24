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
typedef  int /*<<< orphan*/  cpp_token ;
typedef  int /*<<< orphan*/  cpp_reader ;

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 

unsigned char *
FUNC3 (cpp_reader *pfile, const cpp_token *token)
{ 
  unsigned int len = FUNC2 (token) + 1;
  unsigned char *start = FUNC0 (pfile, len), *end;

  end = FUNC1 (pfile, token, start, false);
  end[0] = '\0';

  return start;
}