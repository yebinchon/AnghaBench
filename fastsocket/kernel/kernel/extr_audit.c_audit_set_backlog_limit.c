
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int u32 ;


 int audit_backlog_limit ;
 int audit_do_config_change (char*,int *,int,int ,int ,int ) ;

__attribute__((used)) static int audit_set_backlog_limit(int limit, uid_t loginuid, u32 sessionid,
       u32 sid)
{
 return audit_do_config_change("audit_backlog_limit", &audit_backlog_limit,
          limit, loginuid, sessionid, sid);
}
