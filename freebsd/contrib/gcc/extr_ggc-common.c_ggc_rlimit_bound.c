
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {double rlim_cur; } ;
typedef double rlim_t ;


 int RLIMIT_AS ;
 int RLIMIT_DATA ;
 scalar_t__ RLIM_INFINITY ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;

__attribute__((used)) static double
ggc_rlimit_bound (double limit)
{
  return limit;
}
