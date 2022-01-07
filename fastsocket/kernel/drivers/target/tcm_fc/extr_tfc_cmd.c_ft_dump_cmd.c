
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ft_cmd {int dummy; } ;


 int _ft_dump_cmd (struct ft_cmd*,char const*) ;
 int ft_debug_logging ;
 scalar_t__ unlikely (int ) ;

void ft_dump_cmd(struct ft_cmd *cmd, const char *caller)
{
 if (unlikely(ft_debug_logging))
  _ft_dump_cmd(cmd, caller);
}
