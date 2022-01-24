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
struct type {int dummy; } ;
struct floatformat {int dummy; } ;
typedef  int /*<<< orphan*/  DOUBLEST ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type const*) ; 
 scalar_t__ TYPE_CODE_FLT ; 
 int /*<<< orphan*/  FUNC1 (struct type const*) ; 
 int /*<<< orphan*/  FUNC2 (struct floatformat const*,int /*<<< orphan*/ *,void*) ; 
 struct floatformat* FUNC3 (struct type const*) ; 
 int /*<<< orphan*/  FUNC4 (struct floatformat const*,void const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (void*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void
FUNC10 (const void *from, const struct type *from_type,
                        void *to, const struct type *to_type)
{
  const struct floatformat *from_fmt = FUNC3 (from_type);
  const struct floatformat *to_fmt = FUNC3 (to_type);

  FUNC5 (FUNC0 (from_type) == TYPE_CODE_FLT);
  FUNC5 (FUNC0 (to_type) == TYPE_CODE_FLT);

  if (from_fmt == NULL || to_fmt == NULL)
    {
      /* If we don't know the floating-point format of FROM_TYPE or
         TO_TYPE, there's not much we can do.  We might make the
         assumption that if the length of FROM_TYPE and TO_TYPE match,
         their floating-point format would match too, but that
         assumption might be wrong on targets that support
         floating-point types that only differ in endianness for
         example.  So we warn instead, and zero out the target buffer.  */
      FUNC9 ("Can't convert floating-point number to desired type.");
      FUNC7 (to, 0, FUNC1 (to_type));
    }
  else if (from_fmt == to_fmt)
    {
      /* We're in business.  The floating-point format of FROM_TYPE
         and TO_TYPE match.  However, even though the floating-point
         format matches, the length of the type might still be
         different.  Make sure we don't overrun any buffers.  See
         comment in store_typed_floating for a discussion about
         zeroing out remaining bytes in the target buffer.  */
      FUNC7 (to, 0, FUNC1 (to_type));
      FUNC6 (to, from, FUNC8 (FUNC1 (from_type), FUNC1 (to_type)));
    }
  else
    {
      /* The floating-point types don't match.  The best we can do
         (aport from simulating the target FPU) is converting to the
         widest floating-point type supported by the host, and then
         again to the desired type.  */
      DOUBLEST d;

      FUNC4 (from_fmt, from, &d);
      FUNC2 (to_fmt, &d, to);
    }
}