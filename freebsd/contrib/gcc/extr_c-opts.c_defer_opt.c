
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum opt_code { ____Placeholder_opt_code } opt_code ;
struct TYPE_2__ {int code; char const* arg; } ;


 size_t deferred_count ;
 TYPE_1__* deferred_opts ;

__attribute__((used)) static void
defer_opt (enum opt_code code, const char *arg)
{
  deferred_opts[deferred_count].code = code;
  deferred_opts[deferred_count].arg = arg;
  deferred_count++;
}
