#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  flagword ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_7__ {int /*<<< orphan*/  filepos; } ;
typedef  TYPE_1__ asection ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char const*) ; 

__attribute__((used)) static void
FUNC7 (bfd *abfd, 
			asection *asect, 
			void *arg)
{
  flagword flags = FUNC0 (abfd, asect);
  const char *name = FUNC1 (abfd, asect);

  if (arg == NULL || *((char *) arg) == '\0'
      || FUNC6 ((char *) arg, name)
      || FUNC5 ((char *) arg, flags))
    {
      CORE_ADDR addr, endaddr;

      addr = FUNC3 (abfd, asect);
      endaddr = addr + FUNC2 (abfd, asect);
      FUNC4 (name, flags, addr, endaddr, asect->filepos);
    }
}