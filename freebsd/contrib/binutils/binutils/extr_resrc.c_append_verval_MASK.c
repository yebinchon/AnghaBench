#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  unichar ;
struct TYPE_4__ {struct TYPE_4__* next; void* value; void* key; } ;
typedef  TYPE_1__ rc_ver_stringinfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/  const*) ; 

rc_ver_stringinfo *
FUNC2 (rc_ver_stringinfo *strings, const unichar *key,
	       const unichar *value)
{
  rc_ver_stringinfo *vs, **pp;

  vs = (rc_ver_stringinfo *) FUNC0 (sizeof (rc_ver_stringinfo));
  vs->next = NULL;
  vs->key = FUNC1 (key);
  vs->value = FUNC1 (value);

  for (pp = &strings; *pp != NULL; pp = &(*pp)->next)
    ;
  *pp = vs;

  return strings;
}