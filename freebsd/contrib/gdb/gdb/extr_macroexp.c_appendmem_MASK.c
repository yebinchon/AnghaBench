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
struct macro_buffer {int len; int size; scalar_t__ text; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct macro_buffer*,int) ; 

__attribute__((used)) static void
FUNC2 (struct macro_buffer *b, char *addr, int len)
{
  int new_len = b->len + len;

  if (new_len > b->size)
    FUNC1 (b, new_len);

  FUNC0 (b->text + b->len, addr, len);
  b->len = new_len;
}