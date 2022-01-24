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
struct pr_handle {int indent; TYPE_1__* stack; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_2__ {char* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static bfd_boolean
FUNC2 (void *p)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *s;

  FUNC0 (info->stack != NULL);
  FUNC0 (info->indent >= 2);

  info->indent -= 2;

  /* Change the trailing indentation to have a close brace.  */
  s = info->stack->type + FUNC1 (info->stack->type) - 2;
  FUNC0 (s[0] == ' ' && s[1] == ' ' && s[2] == '\0');

  *s++ = '}';
  *s = '\0';

  return TRUE;
}