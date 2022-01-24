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
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {scalar_t__ size; int /*<<< orphan*/  reloc_count; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (bfd *abfd, unsigned int n)
{
  asection *s;

  s = FUNC2 (abfd, FALSE);
  FUNC0 (s != NULL);

  if (s->size == 0)
    {
      /* Make room for a null element.  */
      s->size += FUNC1 (abfd);
      ++s->reloc_count;
    }
  s->size += n * FUNC1 (abfd);
}