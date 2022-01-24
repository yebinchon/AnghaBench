#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int len; char* data; } ;
typedef  TYPE_1__ barray ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2 (barray *y)
{
  int x;

  FUNC1 ("%d (", y->len);

  for (x = 0; x < y->len; x++)
    FUNC1 ("(%02x %c)", y->data[x],
	    FUNC0 (y->data[x]) ? y->data[x] : '.');

  FUNC1 (")\n");
}