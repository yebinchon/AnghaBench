
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void adfs_writeval(unsigned char *p, int len, unsigned int val)
{
 switch (len) {
 case 4: p[3] = val >> 24;
 case 3: p[2] = val >> 16;
 case 2: p[1] = val >> 8;
 default: p[0] = val;
 }
}
