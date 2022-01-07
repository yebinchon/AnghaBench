
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
typedef int __u32 ;


 int do_div (int ,int) ;

__attribute__((used)) static inline __u32 xfs_do_mod(void *a, __u32 b, int n)
{
 switch (n) {
  case 4:
   return *(__u32 *)a % b;
  case 8:
   {
   __u64 c = *(__u64 *)a;
   return do_div(c, b);
   }
 }


 return 0;
}
