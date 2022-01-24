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
struct TYPE_3__ {int /*<<< orphan*/  nonexistent_file_ob; int /*<<< orphan*/  nonexistent_file_hash; int /*<<< orphan*/  dir_hash; int /*<<< orphan*/  file_hash; } ;
typedef  TYPE_1__ cpp_reader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2 (cpp_reader *pfile)
{
  FUNC0 (pfile->file_hash);
  FUNC0 (pfile->dir_hash);
  FUNC0 (pfile->nonexistent_file_hash);
  FUNC1 (&pfile->nonexistent_file_ob, 0);
}