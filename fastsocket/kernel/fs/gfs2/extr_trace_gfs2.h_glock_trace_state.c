
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DLM_LOCK_CW ;
 int DLM_LOCK_EX ;
 int DLM_LOCK_NL ;
 int DLM_LOCK_PR ;




__attribute__((used)) static inline u8 glock_trace_state(unsigned int state)
{
 switch(state) {
 case 128:
  return DLM_LOCK_PR;
 case 130:
  return DLM_LOCK_CW;
 case 129:
  return DLM_LOCK_EX;
 }
 return DLM_LOCK_NL;
}
