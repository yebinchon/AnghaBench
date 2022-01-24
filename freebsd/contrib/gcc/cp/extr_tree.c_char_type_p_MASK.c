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
 int /*<<< orphan*/  char_type_node ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signed_char_type_node ; 
 int /*<<< orphan*/  unsigned_char_type_node ; 
 int /*<<< orphan*/  wchar_type_node ; 

int
FUNC1 (tree type)
{
  return (FUNC0 (type, char_type_node)
	  || FUNC0 (type, unsigned_char_type_node)
	  || FUNC0 (type, signed_char_type_node)
	  || FUNC0 (type, wchar_type_node));
}