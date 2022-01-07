
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACC_MODE (int) ;
 int AUDIT_PERM_WRITE ;
 int O_CREAT ;
 int O_TRUNC ;

__attribute__((used)) static inline int open_arg(int flags, int mask)
{
 int n = ACC_MODE(flags);
 if (flags & (O_TRUNC | O_CREAT))
  n |= AUDIT_PERM_WRITE;
 return n & mask;
}
