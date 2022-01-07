
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned short*) ;
 unsigned short* mtu_plateau ;

__attribute__((used)) static inline unsigned short guess_mtu(unsigned short old_mtu)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(mtu_plateau); i++)
  if (old_mtu > mtu_plateau[i])
   return mtu_plateau[i];
 return 68;
}
