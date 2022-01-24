#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct obj_section {TYPE_1__* the_bfd_section; int /*<<< orphan*/  endaddr; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  flagword ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {int /*<<< orphan*/  filepos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 

__attribute__((used)) static void
FUNC5 (bfd *abfd, 
			    struct obj_section *asect, 
			    char *string)
{
  flagword flags = FUNC0 (abfd, asect->the_bfd_section);
  const char *name = FUNC1 (abfd, asect->the_bfd_section);

  if (string == NULL || *string == '\0'
      || FUNC4 (string, name)
      || FUNC3 (string, flags))
    {
      FUNC2 (name, flags, asect->addr, asect->endaddr, 
			  asect->the_bfd_section->filepos);
    }
}