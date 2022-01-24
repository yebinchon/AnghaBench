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

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_CHAR ; 
 scalar_t__ TYPE_CODE_INT ; 
 scalar_t__ TYPE_CODE_RANGE ; 
 char* FUNC2 (struct type*) ; 

int
FUNC3 (struct type *type)
{
  const char *name = FUNC2 (type);
  return
    name != NULL
    && (FUNC1 (type) == TYPE_CODE_CHAR
	|| FUNC1 (type) == TYPE_CODE_INT
	|| FUNC1 (type) == TYPE_CODE_RANGE)
    && (FUNC0 (name, "character") || FUNC0 (name, "wide_character")
	|| FUNC0 (name, "unsigned char"));
}