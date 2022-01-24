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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 char* FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (size_t) ; 

__attribute__((used)) static char *
FUNC7(const char *src, const char *str, const char *sub)
{

  char *retval = NULL, *str_start, *str_end, *src_end;
  size_t total_size, first_half, second_half, sub_size;

  /* assign pointers to the start and end of str */
  if ((str_start = FUNC5(src, str)) == NULL) {
    return retval;
  }
  str_end = (FUNC2(str) - 1) + str_start;

  /* assign to the end of the src. */
  src_end = (FUNC2(src) - 1) + (char*)src;

  /* size from the beginning of src to the start of str */
  first_half = (size_t)(str_start - src);

  /* size from the end of str to the end of src */
  second_half = (size_t)(src_end - str_end);

  sub_size = FUNC2(sub);

  total_size = (first_half + sub_size + second_half + 1);

  retval = (char*)FUNC6(total_size);
  FUNC1(retval, 0, total_size);

  /*
   * Put together the string such that the first half is copied
   * followed the sub and second half.
   *
   * We use strncpy instead of xstrlcpy because we are intentionally
   * causing truncation and we don't want this to cause errors in the
   * log.
   */
  (void)FUNC4(retval, src, first_half);
  (void)FUNC3(retval, sub, sub_size);
  (void)FUNC3(retval, str_end + 1, second_half);

  if (FUNC5(retval, str) != NULL) {
    /*
     * If there is another occurrences of str call this function
     * recursively.
     */
    char* tmp;
    if ((tmp = FUNC7(retval, str, sub)) != NULL) {
      FUNC0(retval);
      retval = tmp;
    }
  }
  return retval;
}