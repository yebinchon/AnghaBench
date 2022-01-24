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
struct d_print_info {scalar_t__ len; scalar_t__ alc; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d_print_info*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static void
FUNC2 (struct d_print_info *dpi, const char *s, size_t l)
{
  if (dpi->buf != NULL)
    {
      if (dpi->len + l > dpi->alc)
	{
	  FUNC0 (dpi, l);
	  if (dpi->buf == NULL)
	    return;
	}

      FUNC1 (dpi->buf + dpi->len, s, l);
      dpi->len += l;
    }
}