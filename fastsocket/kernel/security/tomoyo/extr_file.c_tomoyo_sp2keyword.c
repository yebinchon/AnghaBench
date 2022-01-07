
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t const TOMOYO_MAX_SINGLE_PATH_OPERATION ;
 char const** tomoyo_sp_keyword ;

const char *tomoyo_sp2keyword(const u8 operation)
{
 return (operation < TOMOYO_MAX_SINGLE_PATH_OPERATION)
  ? tomoyo_sp_keyword[operation] : ((void*)0);
}
