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
 int TYPE_QUAL_CONST ; 
 int TYPE_QUAL_RESTRICT ; 
 int TYPE_QUAL_VOLATILE ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static int
FUNC1 (int c)
{
  switch (c)
    {
    case 'C':
      return TYPE_QUAL_CONST;

    case 'V':
      return TYPE_QUAL_VOLATILE;

    case 'u':
      return TYPE_QUAL_RESTRICT;

    default:
      break;
    }

  /* C was an invalid qualifier.  */
  FUNC0 ();
}