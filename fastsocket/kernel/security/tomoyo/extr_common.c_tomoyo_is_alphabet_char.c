
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool tomoyo_is_alphabet_char(const char c)
{
 return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
}
