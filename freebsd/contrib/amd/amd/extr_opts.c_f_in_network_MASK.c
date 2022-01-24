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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(char *arg)
{
  int status;

  if (!arg)
    return 0;

  status = FUNC1(arg);
  FUNC0("%s is %son a local network", arg, (status ? "" : "not "));
  return status;
}