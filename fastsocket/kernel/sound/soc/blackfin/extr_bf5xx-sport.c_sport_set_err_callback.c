
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sport_device {void (* err_callback ) (void*) ;void* err_data; } ;


 int BUG_ON (int ) ;

int sport_set_err_callback(struct sport_device *sport,
  void (*err_callback)(void *), void *err_data)
{
 BUG_ON(err_callback == ((void*)0));
 sport->err_callback = err_callback;
 sport->err_data = err_data;

 return 0;
}
