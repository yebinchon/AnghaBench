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
struct _Unwind_Context {int dummy; } ;
typedef  int /*<<< orphan*/  _Unwind_Ptr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char,struct _Unwind_Context*) ; 
 unsigned char const* FUNC1 (unsigned char,int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline const unsigned char *
FUNC2 (struct _Unwind_Context *context, unsigned char encoding,
		    const unsigned char *p, _Unwind_Ptr *val)
{
  return FUNC1 (encoding,
		FUNC0 (encoding, context),
		p, val);
}