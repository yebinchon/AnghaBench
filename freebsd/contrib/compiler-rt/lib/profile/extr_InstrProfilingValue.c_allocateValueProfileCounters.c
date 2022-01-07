
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t uint32_t ;
struct TYPE_3__ {int Values; scalar_t__* NumValueSites; } ;
typedef TYPE_1__ __llvm_profile_data ;
typedef int ValueProfNode ;


 int COMPILER_RT_BOOL_CMPXCHG (int *,int ,int **) ;
 int INSTR_PROF_MAX_NUM_VAL_PER_SITE ;
 size_t IPVK_First ;
 size_t IPVK_Last ;
 int VPMaxNumValsPerSite ;
 scalar_t__ calloc (int ,int) ;
 int free (int **) ;
 int hasNonDefaultValsPerSite ;
 scalar_t__ hasStaticCounters ;

__attribute__((used)) static int allocateValueProfileCounters(__llvm_profile_data *Data) {
  uint64_t NumVSites = 0;
  uint32_t VKI;



  hasStaticCounters = 0;


  if (!hasNonDefaultValsPerSite)
    VPMaxNumValsPerSite = INSTR_PROF_MAX_NUM_VAL_PER_SITE;

  for (VKI = IPVK_First; VKI <= IPVK_Last; ++VKI)
    NumVSites += Data->NumValueSites[VKI];

  ValueProfNode **Mem =
      (ValueProfNode **)calloc(NumVSites, sizeof(ValueProfNode *));
  if (!Mem)
    return 0;
  if (!COMPILER_RT_BOOL_CMPXCHG(&Data->Values, 0, Mem)) {
    free(Mem);
    return 0;
  }
  return 1;
}
