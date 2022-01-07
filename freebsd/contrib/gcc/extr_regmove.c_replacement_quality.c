
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int FIRST_PSEUDO_REGISTER ;
 size_t REGNO (int ) ;
 scalar_t__ REG_LIVE_LENGTH (size_t) ;
 int REG_P (int ) ;
 int* regno_src_regno ;

__attribute__((used)) static int
replacement_quality (rtx reg)
{
  int src_regno;


  if (!REG_P (reg))
    return 0;



  if (REG_LIVE_LENGTH (REGNO (reg)) < 0)
    return 0;

  src_regno = regno_src_regno[REGNO (reg)];


  if (src_regno < 0)
    return 3;


  if (src_regno < FIRST_PSEUDO_REGISTER)
    return 1;




  return 2;
}
