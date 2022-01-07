
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* ulong_t ;


 int alist_def_print_cb_key_int ;
 int alist_def_print_cb_value_int ;
 int printf (char*,...) ;

__attribute__((used)) static int
alist_def_print_cb(void *key, void *value)
{
 printf("Key: ");
 if (alist_def_print_cb_key_int == 1)
  printf("%5lu ", (ulong_t)key);
 else
  printf("%s\n", (char *)key);

 printf("Value: ");
 if (alist_def_print_cb_value_int == 1)
  printf("%5lu\n", (ulong_t)value);
 else
  printf("%s\n", (char *)key);

 return (1);
}
