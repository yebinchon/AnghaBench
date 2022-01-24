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
#define  COMPLEX_CST 131 
#define  INTEGER_CST 130 
#define  REAL_CST 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  VECTOR_CST 128 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int
FUNC5 (tree expr, unsigned char *ptr, int len)
{
  switch (FUNC0 (expr))
    {
    case INTEGER_CST:
      return FUNC2 (expr, ptr, len);

    case REAL_CST:
      return FUNC3 (expr, ptr, len);

    case COMPLEX_CST:
      return FUNC1 (expr, ptr, len);

    case VECTOR_CST:
      return FUNC4 (expr, ptr, len);

    default:
      return 0;
    }
}