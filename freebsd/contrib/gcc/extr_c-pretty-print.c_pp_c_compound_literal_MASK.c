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
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
#define  ARRAY_TYPE 132 
#define  COMPLEX_TYPE 131 
#define  RECORD_TYPE 130 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 129 
#define  VECTOR_TYPE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (c_pretty_printer *pp, tree e)
{
  tree type = FUNC1 (e);
  FUNC3 (pp, type);

  switch (FUNC0 (type))
    {
    case RECORD_TYPE:
    case UNION_TYPE:
    case ARRAY_TYPE:
    case VECTOR_TYPE:
    case COMPLEX_TYPE:
      FUNC2 (pp, e);
      break;

    default:
      FUNC4 (pp, e);
      break;
    }
}