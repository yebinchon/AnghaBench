
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct security_mnt_opts {int dummy; } ;
struct TYPE_2__ {int (* sb_parse_opts_str ) (char*,struct security_mnt_opts*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (char*,struct security_mnt_opts*) ;

int security_sb_parse_opts_str(char *options, struct security_mnt_opts *opts)
{
 return security_ops->sb_parse_opts_str(options, opts);
}
