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
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*,size_t,int) ; 
 char* FUNC1 (int*,size_t*) ; 
 char* FUNC2 (scalar_t__) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static char *FUNC5(const char *orig_filename) {
  char *new_filename;
  size_t prefix_len;
  int prefix_strip;
  const char *prefix = FUNC1(&prefix_strip, &prefix_len);

  if (prefix == NULL)
    return FUNC3(orig_filename);

  new_filename = FUNC2(prefix_len + 1 + FUNC4(orig_filename) + 1);
  FUNC0(new_filename, orig_filename, prefix, prefix_len,
                       prefix_strip);

  return new_filename;
}