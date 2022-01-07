
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int BUG_ON (int) ;
 int DLM_LKF_CANCEL ;
 int DLM_LKF_CONVERT ;
 int DLM_LKF_FORCEUNLOCK ;
 int DLM_LKF_IVVALBLK ;
 int DLM_LKF_LOCAL ;
 int DLM_LKF_NOQUEUE ;
 int DLM_LKF_ORPHAN ;
 int DLM_LKF_TIMEOUT ;
 int DLM_LKF_VALBLK ;
 int LKM_CANCEL ;
 int LKM_CONVERT ;
 int LKM_FORCE ;
 int LKM_INVVALBLK ;
 int LKM_LOCAL ;
 int LKM_NOQUEUE ;
 int LKM_ORPHAN ;
 int LKM_TIMEOUT ;
 int LKM_VALBLK ;
 int map_flag (int ,int ) ;

__attribute__((used)) static int flags_to_o2dlm(u32 flags)
{
 int o2dlm_flags = 0;

 map_flag(DLM_LKF_NOQUEUE, LKM_NOQUEUE);
 map_flag(DLM_LKF_CANCEL, LKM_CANCEL);
 map_flag(DLM_LKF_CONVERT, LKM_CONVERT);
 map_flag(DLM_LKF_VALBLK, LKM_VALBLK);
 map_flag(DLM_LKF_IVVALBLK, LKM_INVVALBLK);
 map_flag(DLM_LKF_ORPHAN, LKM_ORPHAN);
 map_flag(DLM_LKF_FORCEUNLOCK, LKM_FORCE);
 map_flag(DLM_LKF_TIMEOUT, LKM_TIMEOUT);
 map_flag(DLM_LKF_LOCAL, LKM_LOCAL);


 BUG_ON(flags != 0);

 return o2dlm_flags;
}
