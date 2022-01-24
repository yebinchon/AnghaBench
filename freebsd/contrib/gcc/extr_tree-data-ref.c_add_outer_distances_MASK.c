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
struct data_dependence_relation {int dummy; } ;
typedef  int* lambda_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int /*<<< orphan*/ ) ; 
 int* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct data_dependence_relation*,int*) ; 

__attribute__((used)) static void
FUNC4 (struct data_dependence_relation *ddr,
		     lambda_vector dist_v, int index)
{
  /* For each outer loop where init_v is not set, the accesses are
     in dependence of distance 1 in the loop.  */
  while (--index >= 0)
    {
      lambda_vector save_v = FUNC2 (FUNC0 (ddr));
      FUNC1 (dist_v, save_v, FUNC0 (ddr));
      save_v[index] = 1;
      FUNC3 (ddr, save_v);
    }
}