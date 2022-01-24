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
typedef  int hashval_t ;

/* Variables and functions */
#define  ENUMERAL_TYPE 132 
#define  POINTER_TYPE 131 
#define  QUAL_UNION_TYPE 130 
#define  RECORD_TYPE 129 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
#define  UNION_TYPE 128 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static hashval_t
FUNC8 (const void *p)
{
  int i = 0;
  int shift, size;
  tree t = (tree) p;
  tree t2;
  switch (FUNC1 (t))
    {
    /* For pointers, hash on pointee type plus some swizzling.  */
    case POINTER_TYPE:
      return FUNC8 (FUNC3 (t)) ^ 0x3003003;
    /* Hash on number of elements and total size.  */
    case ENUMERAL_TYPE:
      shift = 3;
      t2 = FUNC6 (t);
      break;
    case RECORD_TYPE:
      shift = 0;
      t2 = FUNC4 (t);
      break;
    case QUAL_UNION_TYPE:
      shift = 1;
      t2 = FUNC4 (t);
      break;
    case UNION_TYPE:
      shift = 2;
      t2 = FUNC4 (t);
      break;
    default:
      FUNC7 ();
    }
  for (; t2; t2 = FUNC0 (t2))
    i++;
  size = FUNC2 (FUNC5 (t));
  return ((size << 24) | (i << shift));
}