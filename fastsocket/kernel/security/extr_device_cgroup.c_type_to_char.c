
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short DEV_ALL ;
 short DEV_BLOCK ;
 short DEV_CHAR ;

__attribute__((used)) static char type_to_char(short type)
{
 if (type == DEV_ALL)
  return 'a';
 if (type == DEV_CHAR)
  return 'c';
 if (type == DEV_BLOCK)
  return 'b';
 return 'X';
}
