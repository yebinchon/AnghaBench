
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cancel_one_handler ;
 int iter_handlers (int ,int *) ;
 int printf (char*) ;

__attribute__((used)) static int
cancel_all_handlers(void)
{
 int ret = iter_handlers(cancel_one_handler, ((void*)0));

 if (ret == 0)
  (void) printf("removed all registered handlers\n");

 return (ret);
}
