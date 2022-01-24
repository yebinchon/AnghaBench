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
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/  HLOCAL ;

/* Variables and functions */
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 int FORMAT_MESSAGE_MAX_WIDTH_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char*,int,char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static inline void
FUNC6 (const char* function, const char* file, int line,
	   const char* my_msg)
{
  LPSTR w32_msgbuf;
  FUNC0 (FORMAT_MESSAGE_ALLOCATE_BUFFER
		  | FORMAT_MESSAGE_FROM_SYSTEM
		  | FORMAT_MESSAGE_IGNORE_INSERTS
		  | FORMAT_MESSAGE_MAX_WIDTH_MASK,
    		  NULL, FUNC1(),
		  FUNC3(LANG_NEUTRAL, SUBLANG_DEFAULT),
		  (LPSTR) &w32_msgbuf, 0, NULL);
  FUNC4(stderr, "internal error in %s, at %s:%d: %s: %s\n",
	  function, FUNC5 (file), line, my_msg, w32_msgbuf);
  FUNC2 ((HLOCAL)w32_msgbuf);
}