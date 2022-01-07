
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
typedef int __u32 ;


 int do_div (int ,int) ;

__attribute__((used)) static inline __u32 xfs_do_div(void *a, __u32 b, int n)
{
 __u32 mod;

 switch (n) {
  case 4:
   mod = *(__u32 *)a % b;
   *(__u32 *)a = *(__u32 *)a / b;
   return mod;
  case 8:
   mod = do_div(*(__u64 *)a, b);
   return mod;
 }


 return 0;
}
