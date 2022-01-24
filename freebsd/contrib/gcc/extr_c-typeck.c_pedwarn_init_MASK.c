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
 char* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 

void
FUNC5 (const char *msgid)
{
  char *ofwhat;

  FUNC2 ("%s", FUNC0(msgid));
  ofwhat = FUNC3 ((char *) FUNC1 (FUNC4 () + 1));
  if (*ofwhat)
    FUNC2 ("(near initialization for %qs)", ofwhat);
}