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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 unsigned int TARGET_CHAR_BIT ; 
 char* FUNC1 (struct type*,int) ; 
 unsigned int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static unsigned int
FUNC5 (struct type *type, int f)
{
  const char *name = FUNC1 (type, f);
  int len = (name == NULL) ? 0 : FUNC4 (name);
  int align_offset;

  if (len < 8 || !FUNC3 (name[len - 1]))
    return TARGET_CHAR_BIT;

  if (FUNC3 (name[len - 2]))
    align_offset = len - 2;
  else
    align_offset = len - 1;

  if (align_offset < 7 || !FUNC0 ("___XV", name + align_offset - 6, 5))
    return TARGET_CHAR_BIT;

  return FUNC2 (name + align_offset) * TARGET_CHAR_BIT;
}