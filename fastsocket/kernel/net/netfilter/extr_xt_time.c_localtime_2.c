
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct xtm {int dse; int weekday; } ;



__attribute__((used)) static inline void localtime_2(struct xtm *r, time_t time)
{




 r->dse = time / 86400;





 r->weekday = (4 + r->dse - 1) % 7 + 1;
}
