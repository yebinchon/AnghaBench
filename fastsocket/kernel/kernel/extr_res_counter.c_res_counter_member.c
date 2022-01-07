
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_counter {unsigned long long usage; unsigned long long max_usage; unsigned long long limit; unsigned long long failcnt; unsigned long long soft_limit; } ;


 int BUG () ;






__attribute__((used)) static inline unsigned long long *
res_counter_member(struct res_counter *counter, int member)
{
 switch (member) {
 case 128:
  return &counter->usage;
 case 130:
  return &counter->max_usage;
 case 131:
  return &counter->limit;
 case 132:
  return &counter->failcnt;
 case 129:
  return &counter->soft_limit;
 };

 BUG();
 return ((void*)0);
}
