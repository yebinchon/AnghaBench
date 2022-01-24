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
 scalar_t__ filename_per_file ; 
 int /*<<< orphan*/  filename_per_symbol ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static void
FUNC1 (char *filename)
{
  if (filename_per_file && !filename_per_symbol)
    FUNC0 ("%s:\n", filename);
}