
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
typedef int sector_t ;



__attribute__((used)) static inline int sd_dif_prepare(struct request *rq, sector_t s, unsigned int a)
{
 return 0;
}
