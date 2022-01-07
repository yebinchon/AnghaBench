
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_print (char*) ;

__attribute__((used)) static void fake_astfn(void *astparam)
{
 log_print("fake_astfn should not be called");
}
