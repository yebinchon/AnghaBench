
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int tb_path; } ;


 int PATH_H_PBUFFER (int ,int) ;
 int RFALSE (int,char*) ;
 int dc_check_balance_internal (struct tree_balance*,int) ;
 int dc_check_balance_leaf (struct tree_balance*,int) ;

__attribute__((used)) static int dc_check_balance(struct tree_balance *tb, int h)
{
 RFALSE(!(PATH_H_PBUFFER(tb->tb_path, h)),
        "vs-8250: S is not initialized");

 if (h)
  return dc_check_balance_internal(tb, h);
 else
  return dc_check_balance_leaf(tb, h);
}
