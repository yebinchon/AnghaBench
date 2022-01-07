
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint_t ;


 unsigned int DIFV_SCOPE_GLOBAL ;
 unsigned int DIFV_SCOPE_LOCAL ;
 unsigned int DIFV_SCOPE_THREAD ;

__attribute__((used)) static uint_t
dt_dis_scope(const char *name)
{
 switch (name[2]) {
 case 'l': return (DIFV_SCOPE_LOCAL);
 case 't': return (DIFV_SCOPE_THREAD);
 case 'g': return (DIFV_SCOPE_GLOBAL);
 default: return (-1u);
 }
}
