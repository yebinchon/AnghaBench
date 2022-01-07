
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;


 int printf (char*,int ) ;

__attribute__((used)) static void
mos_leaks_cb(void *arg, uint64_t start, uint64_t size)
{
 for (uint64_t i = start; i < size; i++) {
  (void) printf("MOS object %llu referenced but not allocated\n",
      (u_longlong_t)i);
 }
}
