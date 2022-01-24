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
struct TYPE_4__ {int len; scalar_t__ ptr; } ;
typedef  TYPE_1__ sb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (char const*) ; 

void
FUNC3 (sb *ptr, const char *s)
{
  int len = FUNC2 (s);
  FUNC1 (ptr, len);
  FUNC0 (ptr->ptr + ptr->len, s, len);
  ptr->len += len;
}