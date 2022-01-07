
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_create_inferior ) (char*,char*,char**) ;} ;


 TYPE_1__ child_ops ;
 int stub1 (char*,char*,char**) ;

__attribute__((used)) static void
lin_lwp_create_inferior (char *exec_file, char *allargs, char **env)
{
  child_ops.to_create_inferior (exec_file, allargs, env);
}
