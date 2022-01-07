
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int RTRecordClosure ;
 int getValueProfDataSize (int *) ;

__attribute__((used)) static uint32_t getValueProfDataSizeWrapper(void) {
  return getValueProfDataSize(&RTRecordClosure);
}
