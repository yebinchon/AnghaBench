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
struct d_print_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d_print_info*,char const) ; 

__attribute__((used)) static inline void
FUNC1 (struct d_print_info *dpi, const char *s, size_t l)
{
  size_t i;

  for (i = 0; i < l; i++)
    FUNC0 (dpi, s[i]);
}