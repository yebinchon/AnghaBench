
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int dummy; } ;
typedef int sense_reason_t ;


 int rd_sbc_ops ;
 int sbc_parse_cdb (struct se_cmd*,int *) ;

__attribute__((used)) static sense_reason_t
rd_parse_cdb(struct se_cmd *cmd)
{
 return sbc_parse_cdb(cmd, &rd_sbc_ops);
}
