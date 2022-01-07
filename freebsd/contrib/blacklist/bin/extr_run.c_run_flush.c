
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conf {int c_name; } ;


 int free (int ) ;
 int run (char*,int ,int *) ;

void
run_flush(const struct conf *c)
{
 free(run("flush", c->c_name, ((void*)0)));
}
