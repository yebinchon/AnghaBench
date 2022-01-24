#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  size_t uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  Values; scalar_t__* NumValueSites; } ;
typedef  TYPE_1__ __llvm_profile_data ;
typedef  int /*<<< orphan*/  ValueProfNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  INSTR_PROF_MAX_NUM_VAL_PER_SITE ; 
 size_t IPVK_First ; 
 size_t IPVK_Last ; 
 int /*<<< orphan*/  VPMaxNumValsPerSite ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  hasNonDefaultValsPerSite ; 
 scalar_t__ hasStaticCounters ; 

__attribute__((used)) static int FUNC3(__llvm_profile_data *Data) {
  uint64_t NumVSites = 0;
  uint32_t VKI;

  /* This function will never be called when value site array is allocated
     statically at compile time.  */
  hasStaticCounters = 0;
  /* When dynamic allocation is enabled, allow tracking the max number of
   * values allowd.  */
  if (!hasNonDefaultValsPerSite)
    VPMaxNumValsPerSite = INSTR_PROF_MAX_NUM_VAL_PER_SITE;

  for (VKI = IPVK_First; VKI <= IPVK_Last; ++VKI)
    NumVSites += Data->NumValueSites[VKI];

  ValueProfNode **Mem =
      (ValueProfNode **)FUNC1(NumVSites, sizeof(ValueProfNode *));
  if (!Mem)
    return 0;
  if (!FUNC0(&Data->Values, 0, Mem)) {
    FUNC2(Mem);
    return 0;
  }
  return 1;
}