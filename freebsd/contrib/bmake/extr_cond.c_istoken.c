
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalpha (unsigned char) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static int
istoken(const char *str, const char *tok, size_t len)
{
 return strncmp(str, tok, len) == 0 && !isalpha((unsigned char)str[len]);
}
