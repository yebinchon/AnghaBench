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
 int /*<<< orphan*/  FUNC0 (char*,size_t,int /*<<< orphan*/ ,int) ; 
 char const* cpp_GCC_INCLUDE_DIR ; 
 size_t cpp_GCC_INCLUDE_DIR_len ; 
 char const* iprefix ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (size_t) ; 

__attribute__((used)) static void
FUNC4 (const char *suffix, size_t chain)
{
  char *path;
  const char *prefix;
  size_t prefix_len, suffix_len;

  suffix_len = FUNC2 (suffix);
  prefix     = iprefix ? iprefix : cpp_GCC_INCLUDE_DIR;
  prefix_len = iprefix ? FUNC2 (iprefix) : cpp_GCC_INCLUDE_DIR_len;

  path = (char *) FUNC3 (prefix_len + suffix_len + 1);
  FUNC1 (path, prefix, prefix_len);
  FUNC1 (path + prefix_len, suffix, suffix_len);
  path[prefix_len + suffix_len] = '\0';

  FUNC0 (path, chain, 0, false);
}