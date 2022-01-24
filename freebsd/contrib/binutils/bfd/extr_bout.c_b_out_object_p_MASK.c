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
struct internal_exec {int /*<<< orphan*/  a_info; } ;
struct external_exec {int /*<<< orphan*/  e_info; } ;
typedef  int /*<<< orphan*/  bfd_target ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 scalar_t__ EXEC_BYTES_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct internal_exec) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *,struct internal_exec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b_out_callback ; 
 scalar_t__ FUNC3 (void*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_error_system_call ; 
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct external_exec*,struct internal_exec*) ; 

__attribute__((used)) static const bfd_target *
FUNC7 (bfd *abfd)
{
  struct internal_exec anexec;
  struct external_exec exec_bytes;
  bfd_size_type amt = EXEC_BYTES_SIZE;

  if (FUNC3 ((void *) &exec_bytes, amt, abfd) != amt)
    {
      if (FUNC4 () != bfd_error_system_call)
	FUNC5 (bfd_error_wrong_format);
      return 0;
    }

  anexec.a_info = FUNC0 (abfd, exec_bytes.e_info);

  if (FUNC1 (anexec))
    {
      FUNC5 (bfd_error_wrong_format);
      return 0;
    }

  FUNC6 (abfd, &exec_bytes, &anexec);
  return FUNC2 (abfd, &anexec, b_out_callback);
}