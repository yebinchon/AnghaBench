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
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct stat const*) ; 
 scalar_t__ FUNC8 (struct stat const*) ; 
 scalar_t__ FUNC9 (struct stat const*) ; 
 scalar_t__ FUNC10 (struct stat const*) ; 
 char const* FUNC11 (char*) ; 

char const *
FUNC12 (struct stat const *st)
{
  /* See POSIX 1003.1-2001 XCU Table 4-8 lines 17093-17107 for some of
     these formats.

     To keep diagnostics grammatical in English, the returned string
     must start with a consonant.  */

  if (FUNC5 (st->st_mode))
    return st->st_size == 0 ? FUNC11("regular empty file") : FUNC11("regular file");

  if (FUNC2 (st->st_mode))
    return FUNC11("directory");

  if (FUNC0 (st->st_mode))
    return FUNC11("block special file");

  if (FUNC1 (st->st_mode))
    return FUNC11("character special file");

  if (FUNC3 (st->st_mode))
    return FUNC11("fifo");

  if (FUNC4 (st->st_mode))
    return FUNC11("symbolic link");

  if (FUNC6 (st->st_mode))
    return FUNC11("socket");

  if (FUNC7 (st))
    return FUNC11("message queue");

  if (FUNC8 (st))
    return FUNC11("semaphore");

  if (FUNC9 (st))
    return FUNC11("shared memory object");

  if (FUNC10 (st))
    return FUNC11("typed memory object");

  return FUNC11("weird file");
}