
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;



__attribute__((used)) static wchar_t vfat_skip_char(wchar_t w)
{
 return (w == '.') || (w == ' ');
}
