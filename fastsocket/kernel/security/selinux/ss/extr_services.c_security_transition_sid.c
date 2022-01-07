
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int AVTAB_TRANSITION ;
 int security_compute_sid (int ,int ,int ,int ,int *,int) ;

int security_transition_sid(u32 ssid,
       u32 tsid,
       u16 tclass,
       u32 *out_sid)
{
 return security_compute_sid(ssid, tsid, tclass, AVTAB_TRANSITION,
        out_sid, 1);
}
