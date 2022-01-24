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
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int TYPE_QUAL_CONST ; 
 int TYPE_QUAL_RESTRICT ; 
 int TYPE_QUAL_VOLATILE ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static int
FUNC2 (const tree type)
{
  int num_qualifiers = 0;

  /* The order is specified by:

       "In cases where multiple order-insensitive qualifiers are
       present, they should be ordered 'K' (closest to the base type),
       'V', 'r', and 'U' (farthest from the base type) ..."

     Note that we do not use cp_type_quals below; given "const
     int[3]", the "const" is emitted with the "int", not with the
     array.  */

  if (FUNC0 (type) & TYPE_QUAL_RESTRICT)
    {
      FUNC1 ('r');
      ++num_qualifiers;
    }
  if (FUNC0 (type) & TYPE_QUAL_VOLATILE)
    {
      FUNC1 ('V');
      ++num_qualifiers;
    }
  if (FUNC0 (type) & TYPE_QUAL_CONST)
    {
      FUNC1 ('K');
      ++num_qualifiers;
    }

  return num_qualifiers;
}