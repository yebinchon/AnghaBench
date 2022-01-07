
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; unsigned int suite; } ;


 TYPE_1__* cipher_suites ;

const char *
get_suite_name(unsigned suite)
{
 size_t u;

 for (u = 0; cipher_suites[u].name; u ++) {
  if (cipher_suites[u].suite == suite) {
   return cipher_suites[u].name;
  }
 }
 return ((void*)0);
}
