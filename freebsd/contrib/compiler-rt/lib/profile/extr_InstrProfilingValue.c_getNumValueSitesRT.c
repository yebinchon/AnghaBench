
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {TYPE_1__* Data; } ;
typedef TYPE_2__ ValueProfRuntimeRecord ;
struct TYPE_3__ {size_t* NumValueSites; } ;



__attribute__((used)) static uint32_t getNumValueSitesRT(const void *R, uint32_t VK) {
  return ((const ValueProfRuntimeRecord *)R)->Data->NumValueSites[VK];
}
