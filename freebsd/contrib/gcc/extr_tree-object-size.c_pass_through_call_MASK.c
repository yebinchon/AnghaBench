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
#define  BUILT_IN_MEMCPY 141 
#define  BUILT_IN_MEMCPY_CHK 140 
#define  BUILT_IN_MEMMOVE 139 
#define  BUILT_IN_MEMMOVE_CHK 138 
#define  BUILT_IN_MEMSET 137 
#define  BUILT_IN_MEMSET_CHK 136 
 scalar_t__ BUILT_IN_NORMAL ; 
#define  BUILT_IN_STRCAT 135 
#define  BUILT_IN_STRCAT_CHK 134 
#define  BUILT_IN_STRCPY 133 
#define  BUILT_IN_STRCPY_CHK 132 
#define  BUILT_IN_STRNCAT 131 
#define  BUILT_IN_STRNCAT_CHK 130 
#define  BUILT_IN_STRNCPY 129 
#define  BUILT_IN_STRNCPY_CHK 128 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC5 (tree call)
{
  tree callee = FUNC4 (call);
  tree arglist = FUNC2 (call, 1);

  if (callee
      && FUNC0 (callee) == BUILT_IN_NORMAL)
    switch (FUNC1 (callee))
      {
      case BUILT_IN_MEMCPY:
      case BUILT_IN_MEMMOVE:
      case BUILT_IN_MEMSET:
      case BUILT_IN_STRCPY:
      case BUILT_IN_STRNCPY:
      case BUILT_IN_STRCAT:
      case BUILT_IN_STRNCAT:
      case BUILT_IN_MEMCPY_CHK:
      case BUILT_IN_MEMMOVE_CHK:
      case BUILT_IN_MEMSET_CHK:
      case BUILT_IN_STRCPY_CHK:
      case BUILT_IN_STRNCPY_CHK:
      case BUILT_IN_STRCAT_CHK:
      case BUILT_IN_STRNCAT_CHK:
	if (arglist)
	  return FUNC3 (arglist);
	break;
      default:
	break;
      }

  return NULL_TREE;
}