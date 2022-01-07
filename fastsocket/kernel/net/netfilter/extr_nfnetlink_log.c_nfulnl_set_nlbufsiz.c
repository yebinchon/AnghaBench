
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct nfulnl_instance {int nlbufsiz; int lock; } ;


 int ERANGE ;
 int NFULNL_NLBUFSIZ_DEFAULT ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
nfulnl_set_nlbufsiz(struct nfulnl_instance *inst, u_int32_t nlbufsiz)
{
 int status;

 spin_lock_bh(&inst->lock);
 if (nlbufsiz < NFULNL_NLBUFSIZ_DEFAULT)
  status = -ERANGE;
 else if (nlbufsiz > 131072)
  status = -ERANGE;
 else {
  inst->nlbufsiz = nlbufsiz;
  status = 0;
 }
 spin_unlock_bh(&inst->lock);

 return status;
}
