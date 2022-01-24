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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 scalar_t__ RFmode ; 
 scalar_t__ TARGET_HPUX ; 
 scalar_t__ TFmode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ XFmode ; 

__attribute__((used)) static const char *
FUNC1 (tree type)
{
  /* On HP-UX, "long double" is mangled as "e" so __float128 is
     mangled as "e".  */
  if (!TARGET_HPUX && FUNC0 (type) == TFmode)
    return "g";
  /* On HP-UX, "e" is not available as a mangling of __float80 so use
     an extended mangling.  Elsewhere, "e" is available since long
     double is 80 bits.  */
  if (FUNC0 (type) == XFmode)
    return TARGET_HPUX ? "u9__float80" : "e";
  if (FUNC0 (type) == RFmode)
    return "u7__fpreg";
  return NULL;
}