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
struct macro_buffer {int len; int size; int* text; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct macro_buffer*,int) ; 

__attribute__((used)) static void
FUNC1 (struct macro_buffer *b, int c)
{
  int new_len = b->len + 1;

  if (new_len > b->size)
    FUNC0 (b, new_len);

  b->text[b->len] = c;
  b->len = new_len;
}