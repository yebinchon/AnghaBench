
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtdtor_param {struct xt_hashlimit_info* matchinfo; } ;
struct xt_hashlimit_info {int hinfo; } ;


 int htable_put (int ) ;

__attribute__((used)) static void
hashlimit_mt_destroy_v0(const struct xt_mtdtor_param *par)
{
 const struct xt_hashlimit_info *r = par->matchinfo;

 htable_put(r->hinfo);
}
