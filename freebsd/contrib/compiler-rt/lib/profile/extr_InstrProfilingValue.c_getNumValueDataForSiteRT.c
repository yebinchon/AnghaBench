
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {size_t** SiteCountArray; } ;
typedef TYPE_1__ ValueProfRuntimeRecord ;



__attribute__((used)) static uint32_t getNumValueDataForSiteRT(const void *R, uint32_t VK,
                                         uint32_t S) {
  const ValueProfRuntimeRecord *Record = (const ValueProfRuntimeRecord *)R;
  return Record->SiteCountArray[VK][S];
}
