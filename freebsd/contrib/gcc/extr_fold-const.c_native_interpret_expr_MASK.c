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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
#define  BOOLEAN_TYPE 133 
#define  COMPLEX_TYPE 132 
#define  ENUMERAL_TYPE 131 
#define  INTEGER_TYPE 130 
 int /*<<< orphan*/  NULL_TREE ; 
#define  REAL_TYPE 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  VECTOR_TYPE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static tree
FUNC5 (tree type, unsigned char *ptr, int len)
{
  switch (FUNC0 (type))
    {
    case INTEGER_TYPE:
    case ENUMERAL_TYPE:
    case BOOLEAN_TYPE:
      return FUNC2 (type, ptr, len);

    case REAL_TYPE:
      return FUNC3 (type, ptr, len);

    case COMPLEX_TYPE:
      return FUNC1 (type, ptr, len);

    case VECTOR_TYPE:
      return FUNC4 (type, ptr, len);

    default:
      return NULL_TREE;
    }
}