
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
affs_intl_toupper(int ch)
{
 return (ch >= 'a' && ch <= 'z') || (ch >= 0xE0
  && ch <= 0xFE && ch != 0xF7) ?
  ch - ('a' - 'A') : ch;
}
