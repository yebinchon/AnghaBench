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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static char*
FUNC4 (tree type)
{
  tree name = FUNC3 (type);
  
  if (!name)
    /* Unnamed type, do what you like here.  */
    return (char*)"<UNNAMED>";
  
  /* It will be a TYPE_DECL in the case of a typedef, otherwise, an
     identifier_node */
  if (FUNC2 (name) == TYPE_DECL)
    {
      /*  Each DECL has a DECL_NAME field which contains an
	  IDENTIFIER_NODE.  (Some decls, most often labels, may have
	  zero as the DECL_NAME).  */
      if (FUNC0 (name))
	return (char*)FUNC1 (FUNC0 (name));
      else
	/* Unnamed type, do what you like here.  */
	return (char*)"<UNNAMED>";
    }
  else if (FUNC2 (name) == IDENTIFIER_NODE)
    return (char*)FUNC1 (name);
  else 
    return (char*)"<UNNAMED>";
}