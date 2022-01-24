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
 int /*<<< orphan*/  FUNC0 (char*,char*,int,char*) ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* opt_hostd ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static int
FUNC3(char *arg)
{
  int status;
  char *ptr, *nhost;

  if ((ptr = FUNC2(arg, ',')) != NULL) {
    *ptr = '\0';
    nhost = ptr + 1;
  } else {
    nhost = opt_hostd;
  }
  status = FUNC1(arg, nhost, NULL, NULL);
  FUNC0("netgrp = %s status = %d hostd = %s", arg, status, nhost);
  if (ptr)
    *ptr = ',';
  return status;
}