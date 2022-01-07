
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int inline fastsocket_dbg_level(void)
{

 extern int enable_fastsocket_debug;

 return enable_fastsocket_debug;
}
