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
struct ieee_handle {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 char* FUNC0 (char*) ; 
 scalar_t__ builtin_signed_char ; 
 scalar_t__ builtin_signed_long ; 
 scalar_t__ builtin_signed_long_long ; 
 scalar_t__ builtin_signed_short_int ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static bfd_boolean
FUNC3 (void *p, unsigned int size, bfd_boolean unsignedp)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  unsigned int indx;

  switch (size)
    {
    case 1:
      indx = (int) builtin_signed_char;
      break;
    case 2:
      indx = (int) builtin_signed_short_int;
      break;
    case 4:
      indx = (int) builtin_signed_long;
      break;
    case 8:
      indx = (int) builtin_signed_long_long;
      break;
    default:
      FUNC1 (stderr, FUNC0("IEEE unsupported integer type size %u\n"), size);
      return FALSE;
    }

  if (unsignedp)
    ++indx;

  return FUNC2 (info, indx, size, unsignedp, FALSE);
}