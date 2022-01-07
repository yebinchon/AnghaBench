
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlu {int dummy; } ;


 struct carlu* ERR_PTR (int) ;
 struct carlu* carlu_alloc_driver (int) ;
 int carlusb_free_driver (struct carlu*) ;
 int carlusb_get_dev (struct carlu*,int) ;
 int carlusb_init (struct carlu*) ;

__attribute__((used)) static struct carlu *carlusb_open(void)
{
 struct carlu *tmp;
 int err;

 tmp = carlu_alloc_driver(sizeof(*tmp));
 if (tmp == ((void*)0))
  return ((void*)0);

 err = carlusb_init(tmp);
 if (err < 0)
  goto err_out;

 err = carlusb_get_dev(tmp, 1);
 if (err < 0)
  goto err_out;

 return tmp;

err_out:
 carlusb_free_driver(tmp);
 return ERR_PTR(err);
}
