
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT0 ;
 int BIT1 ;
 int BIT2 ;
 int BIT3 ;

__attribute__((used)) static u8
efuse_CalculateWordCnts(u8 word_en)
{
 u8 word_cnts = 0;
 if(!(word_en & BIT0)) word_cnts++;
 if(!(word_en & BIT1)) word_cnts++;
 if(!(word_en & BIT2)) word_cnts++;
 if(!(word_en & BIT3)) word_cnts++;
 return word_cnts;
}
