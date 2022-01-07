
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static inline wchar_t vfat_bad_char(wchar_t w)
{
 return (w < 0x0020)
     || (w == '*') || (w == '?') || (w == '<') || (w == '>')
     || (w == '|') || (w == '"') || (w == ':') || (w == '/')
     || (w == '\\');
}
