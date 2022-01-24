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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int TARGET_BUF_SIZE ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int
FUNC3 (char *block_cmd)
{
  char buf[TARGET_BUF_SIZE];
  int resp_len;
  FUNC1 (block_cmd);
  resp_len = FUNC0 (buf, sizeof (buf));
  FUNC2 (buf, resp_len);
  return 1;
}