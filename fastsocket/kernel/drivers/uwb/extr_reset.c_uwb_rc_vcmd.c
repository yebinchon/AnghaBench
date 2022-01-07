
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct uwb_rceb {int dummy; } ;
struct uwb_rccb {int dummy; } ;
struct uwb_rc {int dummy; } ;
typedef int ssize_t ;


 int __uwb_rc_cmd (struct uwb_rc*,char const*,struct uwb_rccb*,size_t,int *,int ,int ,int ,struct uwb_rceb**) ;

ssize_t uwb_rc_vcmd(struct uwb_rc *rc, const char *cmd_name,
      struct uwb_rccb *cmd, size_t cmd_size,
      u8 expected_type, u16 expected_event,
      struct uwb_rceb **preply)
{
 return __uwb_rc_cmd(rc, cmd_name, cmd, cmd_size, ((void*)0), 0,
       expected_type, expected_event, preply);
}
