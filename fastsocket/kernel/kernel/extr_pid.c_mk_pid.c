
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidmap {int dummy; } ;
struct pid_namespace {struct pidmap* pidmap; } ;


 int BITS_PER_PAGE ;

__attribute__((used)) static inline int mk_pid(struct pid_namespace *pid_ns,
  struct pidmap *map, int off)
{
 return (map - pid_ns->pidmap)*BITS_PER_PAGE + off;
}
