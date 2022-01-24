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
struct internal_exec {int dummy; } ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct internal_exec) ; 
 int /*<<< orphan*/  FUNC1 (struct internal_exec) ; 
 int /*<<< orphan*/  FUNC2 (struct internal_exec) ; 
 struct internal_exec* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (bfd *abfd,
			file_ptr *ptreloff,
			file_ptr *pdreloff,
			file_ptr *psymoff)
{
  struct internal_exec *execp = FUNC3 (abfd);

  *ptreloff = FUNC2 (*execp);
  *pdreloff = FUNC0 (*execp);
  *psymoff = FUNC1 (*execp);
}