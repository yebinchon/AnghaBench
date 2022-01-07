
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_statistic_info {int master; } ;
struct xt_mtdtor_param {struct xt_statistic_info* matchinfo; } ;


 int kfree (int ) ;

__attribute__((used)) static void statistic_mt_destroy(const struct xt_mtdtor_param *par)
{
 const struct xt_statistic_info *info = par->matchinfo;

 kfree(info->master);
}
