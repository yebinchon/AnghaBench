
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ncpu ;


 int ARRAY_SIZE (int*) ;



 scalar_t__ sysctl (int*,int ,unsigned int*,size_t*,int *,int ) ;

unsigned int
ncpu_available (void)
{
  return 1;
}
