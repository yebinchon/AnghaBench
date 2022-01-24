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
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  temporary_obstack ; 

__attribute__((used)) static char *
FUNC4 (const char *s, const char *ext)
{
  const char *p = FUNC3 (s, '/');
  if (! p)
    p = s;
  p = FUNC3 (p, '.');
  if (! p)
    p = s + FUNC2 (s);

  FUNC1 (&temporary_obstack, s, p - s);
  return FUNC0 (&temporary_obstack, ext, FUNC2 (ext));
}