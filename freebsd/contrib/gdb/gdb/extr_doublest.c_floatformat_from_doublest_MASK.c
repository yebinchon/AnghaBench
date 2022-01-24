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
typedef  int /*<<< orphan*/  val ;
struct floatformat {int dummy; } ;
typedef  float DOUBLEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct floatformat const*,float const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct floatformat const* host_double_format ; 
 struct floatformat const* host_float_format ; 
 struct floatformat const* host_long_double_format ; 
 int /*<<< orphan*/  FUNC2 (void*,...) ; 

void
FUNC3 (const struct floatformat *fmt,
			   const DOUBLEST *in, void *out)
{
  FUNC1 (fmt != NULL);
  if (fmt == host_float_format)
    {
      float val = *in;
      FUNC2 (out, &val, sizeof (val));
    }
  else if (fmt == host_double_format)
    {
      double val = *in;
      FUNC2 (out, &val, sizeof (val));
    }
  else if (fmt == host_long_double_format)
    {
      long double val = *in;
      FUNC2 (out, &val, sizeof (val));
    }
  else
    FUNC0 (fmt, in, out);
}