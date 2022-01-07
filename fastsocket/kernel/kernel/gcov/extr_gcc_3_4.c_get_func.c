
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_iterator {int function; int info; } ;
struct gcov_fn_info {int dummy; } ;


 struct gcov_fn_info* get_fn_info (int ,int ) ;

__attribute__((used)) static struct gcov_fn_info *get_func(struct gcov_iterator *iter)
{
 return get_fn_info(iter->info, iter->function);
}
