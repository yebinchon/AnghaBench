
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tainted_mask ;
 int test_bit (unsigned int,int *) ;

int test_taint(unsigned flag)
{
 return test_bit(flag, &tainted_mask);
}
