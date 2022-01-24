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

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ stabs_data ; 
 int symbuf_left ; 
 int symbuf_read ; 
 int /*<<< orphan*/  symfile_bfd ; 

__attribute__((used)) static void
FUNC1 (int sym_offset)
{
  if (stabs_data)
    {
      symbuf_read += sym_offset;
      symbuf_left -= sym_offset;
    }
  else
    FUNC0 (symfile_bfd, sym_offset, SEEK_CUR);
}