
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {size_t symtab_type; } ;
 size_t DSO_BINARY_TYPE__NOT_FOUND ;





char dso__symtab_origin(const struct dso *dso)
{
 static const char origin[] = {
  [132] = 'k',
  [128] = 'v',
  [133] = 'j',
  [138] = 'l',
  [139] = 'B',
  [137] = 'f',
  [129] = 'u',
  [140] = 'b',
  [131] = 'd',
  [130] = 'K',
  [136] = 'g',
  [135] = 'G',
  [134] = 'V',
 };

 if (dso == ((void*)0) || dso->symtab_type == DSO_BINARY_TYPE__NOT_FOUND)
  return '!';
 return origin[dso->symtab_type];
}
