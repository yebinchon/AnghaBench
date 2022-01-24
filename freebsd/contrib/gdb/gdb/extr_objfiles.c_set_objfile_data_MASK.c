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
struct objfile_data {size_t index; } ;
struct objfile {size_t num_data; void** data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

void
FUNC1 (struct objfile *objfile, const struct objfile_data *data,
		  void *value)
{
  FUNC0 (data->index < objfile->num_data);
  objfile->data[data->index] = value;
}