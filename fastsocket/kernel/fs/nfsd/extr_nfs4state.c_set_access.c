
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ test_bit (int,unsigned long*) ;

__attribute__((used)) static void
set_access(unsigned int *access, unsigned long bmap) {
 int i;

 *access = 0;
 for (i = 1; i < 4; i++) {
  if (test_bit(i, &bmap))
   *access |= i;
 }
}
