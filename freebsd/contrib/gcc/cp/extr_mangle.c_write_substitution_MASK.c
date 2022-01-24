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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int const,int,int) ; 

__attribute__((used)) static void
FUNC3 (const int seq_id)
{
  FUNC0 ("substitution", "");

  FUNC1 ('S');
  if (seq_id > 0)
    FUNC2 (seq_id - 1, /*unsigned=*/1, 36);
  FUNC1 ('_');
}