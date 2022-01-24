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
struct macro_buffer {scalar_t__ is_identifier; scalar_t__ last_token; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct macro_buffer*,char*,int) ; 

__attribute__((used)) static void
FUNC1 (struct macro_buffer *tok, char *start, char *end)
{
  FUNC0 (tok, start, end - start);
  tok->last_token = 0;

  /* Presumed; get_identifier may overwrite this. */
  tok->is_identifier = 0;
}