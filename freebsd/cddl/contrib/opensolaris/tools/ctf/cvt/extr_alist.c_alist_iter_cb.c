
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* aid_func ) (int ,int ,int ) ;int aid_priv; } ;
typedef TYPE_1__ alist_iter_data_t ;
struct TYPE_4__ {int ale_value; int ale_name; } ;
typedef TYPE_2__ alist_el_t ;


 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int
alist_iter_cb(void *arg1, void *arg2)
{
 alist_el_t *el = arg1;
 alist_iter_data_t *aid = arg2;
 return (aid->aid_func(el->ale_name, el->ale_value, aid->aid_priv));
}
