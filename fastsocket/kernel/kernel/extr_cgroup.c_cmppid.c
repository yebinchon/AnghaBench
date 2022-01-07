
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;



__attribute__((used)) static int cmppid(const void *a, const void *b)
{
 return *(pid_t *)a - *(pid_t *)b;
}
