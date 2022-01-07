
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int strlen (char const*) ;

__attribute__((used)) static uint32_t length_of_string(const char *s) {
  return (strlen(s) / 4) + 1;
}
