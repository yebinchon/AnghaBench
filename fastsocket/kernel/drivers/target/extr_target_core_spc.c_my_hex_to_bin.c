
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char tolower (char) ;

__attribute__((used)) static int my_hex_to_bin(char ch)
{
 if ((ch >= '0') && (ch <= '9'))
  return ch - '0';
 ch = tolower(ch);
 if ((ch >= 'a') && (ch <= 'f'))
  return ch - 'a' + 10;
 return -1;
}
