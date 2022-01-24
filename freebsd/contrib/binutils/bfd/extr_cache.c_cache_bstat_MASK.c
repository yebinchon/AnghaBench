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
struct stat {int dummy; } ;
struct bfd {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_NO_SEEK_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (struct bfd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_error_system_call ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static int
FUNC4 (struct bfd *abfd, struct stat *sb)
{
  int sts;
  FILE *f = FUNC0 (abfd, CACHE_NO_SEEK_ERROR);
  if (f == NULL)
    return -1;
  sts = FUNC3 (FUNC2 (f), sb);
  if (sts < 0)
    FUNC1 (bfd_error_system_call);
  return sts;
}