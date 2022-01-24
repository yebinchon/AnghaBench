#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* tree ;
struct TYPE_2__ {void** decl; } ;

/* Variables and functions */
 void* NULL_TREE ; 
 void* FUNC0 (void*,unsigned int) ; 
 TYPE_1__* fname_vars ; 
 void* saved_function_name_decls ; 
 void* FUNC1 (void*,void*,void*) ; 

void
FUNC2 (void)
{
  unsigned ix;
  tree saved = NULL_TREE;

  for (ix = 0; fname_vars[ix].decl; ix++)
    {
      tree decl = *fname_vars[ix].decl;

      if (decl)
	{
	  saved = FUNC1 (decl, FUNC0 (NULL_TREE, ix), saved);
	  *fname_vars[ix].decl = NULL_TREE;
	}
    }
  if (saved || saved_function_name_decls)
    /* Normally they'll have been NULL, so only push if we've got a
       stack, or they are non-NULL.  */
    saved_function_name_decls = FUNC1 (saved, NULL_TREE,
					   saved_function_name_decls);
}