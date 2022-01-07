
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int BUG_ON (int) ;
 int ldm_error (char*,int) ;

__attribute__((used)) static u64 ldm_get_vnum (const u8 *block)
{
 u64 tmp = 0;
 u8 length;

 BUG_ON (!block);

 length = *block++;

 if (length && length <= 8)
  while (length--)
   tmp = (tmp << 8) | *block++;
 else
  ldm_error ("Illegal length %d.", length);

 return tmp;
}
