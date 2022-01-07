
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct xt_target {int dummy; } ;


 scalar_t__ IS_ERR (struct xt_target*) ;
 struct xt_target* try_then_request_module (int ,char*,int ,char const*) ;
 int xt_find_target (size_t,char const*,size_t) ;
 int * xt_prefix ;

struct xt_target *xt_request_find_target(u8 af, const char *name, u8 revision)
{
 struct xt_target *target;

 target = try_then_request_module(xt_find_target(af, name, revision),
      "%st_%s", xt_prefix[af], name);
 if (IS_ERR(target) || !target)
  return ((void*)0);
 return target;
}
