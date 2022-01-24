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
struct data_dependence_relation {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_dependence_dependent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC1 (struct data_dependence_relation*) ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  FUNC2 (struct data_dependence_relation*) ; 
 scalar_t__ FUNC3 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC4 (struct data_dependence_relation*) ; 
 TYPE_1__ dependence_stats ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 
 scalar_t__ FUNC6 (struct data_dependence_relation*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (struct data_dependence_relation *ddr)
{
  
  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC5 (dump_file, "(subscript_dependence_tester \n");
  
  if (FUNC6 (ddr, FUNC0 (ddr), FUNC1 (ddr)))
    dependence_stats.num_dependence_dependent++;

  FUNC4 (ddr);
  if (FUNC3 (ddr))
    FUNC2 (ddr);

  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC5 (dump_file, ")\n");
}