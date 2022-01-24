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
struct d_print_info {int len; char* buf; char last_char; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d_print_info*) ; 

__attribute__((used)) static inline void
FUNC1 (struct d_print_info *dpi, char c)
{
  if (dpi->len == sizeof (dpi->buf) - 1)
    FUNC0 (dpi);

  dpi->buf[dpi->len++] = c;
  dpi->last_char = c;
}