
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_mtdtor_param {int matchinfo; } ;
struct TYPE_2__ {int config; } ;


 TYPE_1__* STRING_TEXT_PRIV (int ) ;
 int textsearch_destroy (int ) ;

__attribute__((used)) static void string_mt_destroy(const struct xt_mtdtor_param *par)
{
 textsearch_destroy(STRING_TEXT_PRIV(par->matchinfo)->config);
}
