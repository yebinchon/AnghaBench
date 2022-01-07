
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pw; struct TYPE_4__* who; } ;
typedef TYPE_1__ CR ;


 int XFREE (TYPE_1__*) ;

__attribute__((used)) static void
cr_free(CR *c)
{
  XFREE(c->who);
  XFREE(c->pw);
  XFREE(c);
}
