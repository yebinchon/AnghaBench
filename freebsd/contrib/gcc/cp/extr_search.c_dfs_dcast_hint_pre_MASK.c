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
typedef  void* tree ;
struct dcast_data_s {void* offset; scalar_t__ repeated_base; scalar_t__ virt_depth; int /*<<< orphan*/  subtype; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 void* NULL_TREE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* dfs_skip_bases ; 
 void* FUNC4 (int) ; 

__attribute__((used)) static tree
FUNC5 (tree binfo, void *data_)
{
  struct dcast_data_s *data = (struct dcast_data_s *) data_;

  if (FUNC2 (binfo))
    data->virt_depth++;

  if (FUNC3 (FUNC1 (binfo), data->subtype))
    {
      if (data->virt_depth)
	{
	  data->offset = FUNC4 (-1);
	  return data->offset;
	}
      if (data->offset)
	data->offset = FUNC4 (-3);
      else
	data->offset = FUNC0 (binfo);

      return data->repeated_base ? dfs_skip_bases : data->offset;
    }

  return NULL_TREE;
}