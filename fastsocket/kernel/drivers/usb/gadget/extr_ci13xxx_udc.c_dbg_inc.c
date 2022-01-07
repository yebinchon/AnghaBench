
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG_DATA_MAX ;

__attribute__((used)) static void dbg_inc(unsigned *idx)
{
 *idx = (*idx + 1) & (DBG_DATA_MAX-1);
}
