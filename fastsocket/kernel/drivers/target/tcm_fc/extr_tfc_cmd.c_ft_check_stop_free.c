
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int dummy; } ;


 int transport_generic_free_cmd (struct se_cmd*,int ) ;

int ft_check_stop_free(struct se_cmd *se_cmd)
{
 transport_generic_free_cmd(se_cmd, 0);
 return 1;
}
