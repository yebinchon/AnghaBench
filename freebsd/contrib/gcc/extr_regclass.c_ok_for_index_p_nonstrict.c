
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 unsigned int FIRST_PSEUDO_REGISTER ;
 unsigned int REGNO (int ) ;
 scalar_t__ REGNO_OK_FOR_INDEX_P (unsigned int) ;

__attribute__((used)) static inline bool
ok_for_index_p_nonstrict (rtx reg)
{
  unsigned regno = REGNO (reg);
  return regno >= FIRST_PSEUDO_REGISTER || REGNO_OK_FOR_INDEX_P (regno);
}
