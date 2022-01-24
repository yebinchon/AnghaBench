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
 scalar_t__ builtin_double ; 
 scalar_t__ builtin_float ; 
 scalar_t__ builtin_long_double ; 
 scalar_t__ builtin_long_long_double ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static bfd_boolean
FUNC3 (void *p, unsigned int size)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  unsigned int indx;

  switch (size)
    {
    case 4:
      indx = (int) builtin_float;
      break;
    case 8:
      indx = (int) builtin_double;
      break;
    case 12:
      /* FIXME: This size really depends upon the processor.  */
      indx = (int) builtin_long_double;
      break;
    case 16:
      indx = (int) builtin_long_long_double;
      break;
    default:
      FUNC1 (stderr, FUNC0("IEEE unsupported float type size %u\n"), size);
      return FALSE;
    }

  return FUNC2 (info, indx, size, FALSE, FALSE);
}