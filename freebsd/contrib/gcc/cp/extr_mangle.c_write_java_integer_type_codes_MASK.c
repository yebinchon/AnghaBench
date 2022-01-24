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
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ const java_boolean_type_node ; 
 scalar_t__ const java_byte_type_node ; 
 scalar_t__ const java_char_type_node ; 
 scalar_t__ const java_int_type_node ; 
 scalar_t__ const java_long_type_node ; 
 scalar_t__ const java_short_type_node ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static void
FUNC2 (const tree type)
{
  if (type == java_int_type_node)
    FUNC1 ('i');
  else if (type == java_short_type_node)
    FUNC1 ('s');
  else if (type == java_byte_type_node)
    FUNC1 ('c');
  else if (type == java_char_type_node)
    FUNC1 ('w');
  else if (type == java_long_type_node)
    FUNC1 ('x');
  else if (type == java_boolean_type_node)
    FUNC1 ('b');
  else
    FUNC0 ();
}