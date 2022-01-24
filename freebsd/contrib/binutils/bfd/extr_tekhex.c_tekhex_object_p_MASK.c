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
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int /*<<< orphan*/  bfd_target ;
typedef  int /*<<< orphan*/  bfd_size_type ;
struct TYPE_7__ {int /*<<< orphan*/  const* xvec; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  first_phase ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static const bfd_target *
FUNC6 (bfd *abfd)
{
  char b[4];

  FUNC4 ();

  if (FUNC2 (abfd, (file_ptr) 0, SEEK_SET) != 0
      || FUNC1 (b, (bfd_size_type) 4, abfd) != 4)
    return NULL;

  if (b[0] != '%' || !FUNC0 (b[1]) || !FUNC0 (b[2]) || !FUNC0 (b[3]))
    return NULL;

  FUNC5 (abfd);

  if (!FUNC3 (abfd, first_phase))
    return NULL;

  return abfd->xvec;
}