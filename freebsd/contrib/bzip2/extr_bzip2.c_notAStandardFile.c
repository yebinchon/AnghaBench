
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MY_STAT {int st_mode; } ;
typedef scalar_t__ IntNative ;
typedef int Char ;
typedef int Bool ;


 int False ;
 scalar_t__ MY_LSTAT (int *,struct MY_STAT*) ;
 scalar_t__ MY_S_ISREG (int ) ;
 int True ;

__attribute__((used)) static
Bool notAStandardFile ( Char* name )
{
   IntNative i;
   struct MY_STAT statBuf;

   i = MY_LSTAT ( name, &statBuf );
   if (i != 0) return True;
   if (MY_S_ISREG(statBuf.st_mode)) return False;
   return True;
}
