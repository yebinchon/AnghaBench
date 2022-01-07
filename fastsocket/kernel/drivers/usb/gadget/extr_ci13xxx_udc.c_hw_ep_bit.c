
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int hw_ep_bit(int num, int dir)
{
 return num + (dir ? 16 : 0);
}
