
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int RTRecord ;
 int getNumValueDataForSiteRT (int *,int ,int ) ;

__attribute__((used)) static uint32_t getNumValueDataForSiteWrapper(uint32_t VK, uint32_t S) {
  return getNumValueDataForSiteRT(&RTRecord, VK, S);
}
