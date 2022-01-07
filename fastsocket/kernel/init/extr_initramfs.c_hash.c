
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int hash(int major, int minor, int ino)
{
 unsigned long tmp = ino + minor + (major << 3);
 tmp += tmp >> 5;
 return tmp & 31;
}
