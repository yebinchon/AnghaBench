
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long IOCTL_HASHSIZE ;

__attribute__((used)) static inline unsigned long ioctl32_hash(unsigned long cmd)
{
 return (((cmd >> 6) ^ (cmd >> 4) ^ cmd)) % IOCTL_HASHSIZE;
}
