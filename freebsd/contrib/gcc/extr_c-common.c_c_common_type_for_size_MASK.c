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
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intDI_type_node ; 
 int /*<<< orphan*/  intHI_type_node ; 
 int /*<<< orphan*/  intQI_type_node ; 
 int /*<<< orphan*/  intSI_type_node ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  long_integer_type_node ; 
 int /*<<< orphan*/  long_long_integer_type_node ; 
 int /*<<< orphan*/  long_long_unsigned_type_node ; 
 int /*<<< orphan*/  long_unsigned_type_node ; 
 int /*<<< orphan*/  short_integer_type_node ; 
 int /*<<< orphan*/  short_unsigned_type_node ; 
 int /*<<< orphan*/  signed_char_type_node ; 
 int /*<<< orphan*/  unsigned_char_type_node ; 
 int /*<<< orphan*/  unsigned_intDI_type_node ; 
 int /*<<< orphan*/  unsigned_intHI_type_node ; 
 int /*<<< orphan*/  unsigned_intQI_type_node ; 
 int /*<<< orphan*/  unsigned_intSI_type_node ; 
 int /*<<< orphan*/  unsigned_type_node ; 
 int /*<<< orphan*/  widest_integer_literal_type_node ; 
 int /*<<< orphan*/  widest_unsigned_literal_type_node ; 

tree
FUNC1 (unsigned int bits, int unsignedp)
{
  if (bits == FUNC0 (integer_type_node))
    return unsignedp ? unsigned_type_node : integer_type_node;

  if (bits == FUNC0 (signed_char_type_node))
    return unsignedp ? unsigned_char_type_node : signed_char_type_node;

  if (bits == FUNC0 (short_integer_type_node))
    return unsignedp ? short_unsigned_type_node : short_integer_type_node;

  if (bits == FUNC0 (long_integer_type_node))
    return unsignedp ? long_unsigned_type_node : long_integer_type_node;

  if (bits == FUNC0 (long_long_integer_type_node))
    return (unsignedp ? long_long_unsigned_type_node
	    : long_long_integer_type_node);

  if (bits == FUNC0 (widest_integer_literal_type_node))
    return (unsignedp ? widest_unsigned_literal_type_node
	    : widest_integer_literal_type_node);

  if (bits <= FUNC0 (intQI_type_node))
    return unsignedp ? unsigned_intQI_type_node : intQI_type_node;

  if (bits <= FUNC0 (intHI_type_node))
    return unsignedp ? unsigned_intHI_type_node : intHI_type_node;

  if (bits <= FUNC0 (intSI_type_node))
    return unsignedp ? unsigned_intSI_type_node : intSI_type_node;

  if (bits <= FUNC0 (intDI_type_node))
    return unsignedp ? unsigned_intDI_type_node : intDI_type_node;

  return 0;
}