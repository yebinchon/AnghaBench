
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ u_long ;
typedef int intmax_t ;
typedef int int64_t ;



__attribute__((used)) static intmax_t
fsbtoblk(int64_t num, uint64_t fsbs, u_long bs)
{
 return (num * (intmax_t) fsbs / (int64_t) bs);
}
