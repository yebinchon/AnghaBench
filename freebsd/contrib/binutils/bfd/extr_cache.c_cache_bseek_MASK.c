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
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_NO_SEEK ; 
 int SEEK_CUR ; 
 int /*<<< orphan*/ * FUNC0 (struct bfd*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2 (struct bfd *abfd, file_ptr offset, int whence)
{
  FILE *f = FUNC0 (abfd, whence != SEEK_CUR ? CACHE_NO_SEEK : 0);
  if (f == NULL)
    return -1;
  return FUNC1 (f, offset, whence);
}