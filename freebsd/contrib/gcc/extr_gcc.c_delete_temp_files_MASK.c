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
struct temp_file {int /*<<< orphan*/  name; struct temp_file* next; } ;

/* Variables and functions */
 struct temp_file* always_delete_queue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (void)
{
  struct temp_file *temp;

  for (temp = always_delete_queue; temp; temp = temp->next)
    FUNC0 (temp->name);
  always_delete_queue = 0;
}