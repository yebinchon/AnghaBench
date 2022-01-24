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

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 char const* clean_text_limit ; 

__attribute__((used)) static const char *
FUNC2 (const char *ptr)
{
  for (++ptr; FUNC0 ((const unsigned char)*ptr);
       FUNC1 (++ptr < clean_text_limit, 0))
    continue;
  return ptr;
}