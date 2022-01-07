
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
strcmp_prefix(const char *a, const char *a_prefix)
{
 while (*a_prefix && *a == *a_prefix) {
  a++;
  a_prefix++;
 }
 return *a_prefix ? ((void*)0) : a;
}
