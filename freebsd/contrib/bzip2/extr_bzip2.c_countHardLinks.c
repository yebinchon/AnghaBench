
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MY_STAT {scalar_t__ st_nlink; } ;
typedef scalar_t__ IntNative ;
typedef scalar_t__ Int32 ;
typedef int Char ;


 scalar_t__ MY_LSTAT (int *,struct MY_STAT*) ;

__attribute__((used)) static
Int32 countHardLinks ( Char* name )
{
   IntNative i;
   struct MY_STAT statBuf;

   i = MY_LSTAT ( name, &statBuf );
   if (i != 0) return 0;
   return (statBuf.st_nlink - 1);
}
