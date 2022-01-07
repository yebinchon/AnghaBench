
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DBGP_DATA_TOGGLE ;

__attribute__((used)) static inline u32 dbgp_pid_update(u32 x, u32 tok)
{
 return ((x ^ DBGP_DATA_TOGGLE) & 0xffff00) | (tok & 0xff);
}
