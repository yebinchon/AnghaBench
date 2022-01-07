
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int dummy; } ;


 int RFALSE (int ,char*) ;
 int check_before_balancing (struct tree_balance*) ;
 struct tree_balance* cur_tb ;

__attribute__((used)) static inline void do_balance_starts(struct tree_balance *tb)
{
 RFALSE(check_before_balancing(tb), "PAP-12340: locked buffers in TB");



}
