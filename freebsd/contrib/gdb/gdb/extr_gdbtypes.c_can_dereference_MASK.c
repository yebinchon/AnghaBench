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
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_VOID ; 
 struct type* FUNC2 (struct type*) ; 

int
FUNC3 (struct type *t)
{
  /* FIXME: Should we return true for references as well as pointers?  */
  FUNC0 (t);
  return
    (t != NULL
     && FUNC1 (t) == TYPE_CODE_PTR
     && FUNC1 (FUNC2 (t)) != TYPE_CODE_VOID);
}