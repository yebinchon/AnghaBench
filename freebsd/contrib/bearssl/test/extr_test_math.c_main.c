
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i31_impl ;
 int i32_impl ;
 int * impl ;
 int printf (char*) ;
 int test_modint () ;

int
main(void)
{
 printf("===== i32 ======\n");
 impl = &i32_impl;
 test_modint();
 printf("===== i31 ======\n");
 impl = &i31_impl;
 test_modint();



 return 0;
}
