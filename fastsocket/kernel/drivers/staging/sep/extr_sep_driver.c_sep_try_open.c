
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_device {int in_use; } ;


 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int sep_try_open(struct sep_device *sep)
{
 if (!test_and_set_bit(0, &sep->in_use))
  return 1;
 return 0;
}
