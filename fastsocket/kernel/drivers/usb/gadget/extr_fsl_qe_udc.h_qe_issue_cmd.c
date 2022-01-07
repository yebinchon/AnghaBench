
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int EOPNOTSUPP ;

inline int qe_issue_cmd(u32 cmd, u32 device, u8 mcn_protocol,
 u32 cmd_input)
{
 return -EOPNOTSUPP;
}
