
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_rateinfo {int burst; int avg; scalar_t__ cost; scalar_t__ credit_cap; struct xt_limit_priv* master; } ;
struct xt_mtchk_param {struct xt_rateinfo* matchinfo; } ;
struct xt_limit_priv {scalar_t__ credit; int prev; } ;


 int GFP_KERNEL ;
 int jiffies ;
 struct xt_limit_priv* kmalloc (int,int ) ;
 int printk (char*,int,int) ;
 scalar_t__ user2credits (int) ;

__attribute__((used)) static bool limit_mt_check(const struct xt_mtchk_param *par)
{
 struct xt_rateinfo *r = par->matchinfo;
 struct xt_limit_priv *priv;


 if (r->burst == 0
     || user2credits(r->avg * r->burst) < user2credits(r->avg)) {
  printk("Overflow in xt_limit, try lower: %u/%u\n",
         r->avg, r->burst);
  return 0;
 }

 priv = kmalloc(sizeof(*priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return 0;


 r->master = priv;
 if (r->cost == 0) {


  priv->prev = jiffies;
  priv->credit = user2credits(r->avg * r->burst);
  r->credit_cap = user2credits(r->avg * r->burst);
  r->cost = user2credits(r->avg);
 }
 return 1;
}
