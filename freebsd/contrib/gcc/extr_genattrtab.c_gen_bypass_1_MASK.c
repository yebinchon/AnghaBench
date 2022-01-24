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
struct bypass_list {char const* insn; struct bypass_list* next; } ;

/* Variables and functions */
 struct bypass_list* all_bypasses ; 
 char* FUNC0 (char const*,size_t) ; 
 int /*<<< orphan*/  n_bypasses ; 
 struct bypass_list* FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2 (const char *s, size_t len)
{
  struct bypass_list *b;

  if (len == 0)
    return;

  s = FUNC0 (s, len);
  for (b = all_bypasses; b; b = b->next)
    if (s == b->insn)
      return;  /* already got that one */

  b = FUNC1 (sizeof (struct bypass_list));
  b->insn = s;
  b->next = all_bypasses;
  all_bypasses = b;
  n_bypasses++;
}