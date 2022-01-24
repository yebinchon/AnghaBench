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
struct bfd {int dummy; } ;
typedef  scalar_t__ file_ptr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct bfd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_error_system_call ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (void const*,int,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static file_ptr
FUNC4 (struct bfd *abfd, const void *where, file_ptr nbytes)
{
  file_ptr nwrite;
  FILE *f = FUNC0 (abfd, 0);
  if (f == NULL)
    return 0;
  nwrite = FUNC3 (where, 1, nbytes, f);
  if (nwrite < nbytes && FUNC2 (f))
    {
      FUNC1 (bfd_error_system_call);
      return -1;
    }
  return nwrite;
}