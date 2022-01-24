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
struct msg {char* args; struct msg* next; } ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct msg*) ; 
 struct msg* msg_chain ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,char const*,char const*) ; 
 int FUNC3 (char const*) ; 

void
FUNC4 (void)
{
  char const *arg[5];
  int i;
  struct msg *m = msg_chain;

  while (m)
    {
      struct msg *next = m->next;
      arg[0] = m->args;
      for (i = 0;  i < 4;  i++)
	arg[i + 1] = arg[i] + FUNC3 (arg[i]) + 1;
      FUNC2 (FUNC0(arg[0]), arg[1], arg[2], arg[3], arg[4]);
      FUNC1 (m);
      m = next;
    }
}