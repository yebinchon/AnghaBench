
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session_env {int * arch; } ;


 int objdump_path ;
 int perf_session_env__lookup_binutils_path (struct perf_session_env*,char*,int *) ;

int perf_session_env__lookup_objdump(struct perf_session_env *env)
{




 if (env->arch == ((void*)0))
  return 0;

 return perf_session_env__lookup_binutils_path(env, "objdump",
            &objdump_path);
}
