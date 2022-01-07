
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT0 ;
 int BIT1 ;
 int BIT2 ;
 int BIT3 ;

__attribute__((used)) static void
efuse_WordEnableDataRead( u8 word_en,u8 *sourdata,u8 *targetdata)
{







 if (!(word_en&BIT0))
 {
  targetdata[0] = sourdata[0];
  targetdata[1] = sourdata[1];
 }
 if (!(word_en&BIT1))
 {
  targetdata[2] = sourdata[2];
  targetdata[3] = sourdata[3];
 }
 if (!(word_en&BIT2))
 {
  targetdata[4] = sourdata[4];
  targetdata[5] = sourdata[5];
 }
 if (!(word_en&BIT3))
 {
  targetdata[6] = sourdata[6];
  targetdata[7] = sourdata[7];
 }
}
