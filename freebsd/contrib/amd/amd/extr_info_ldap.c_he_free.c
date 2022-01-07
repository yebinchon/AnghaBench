
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* host; } ;
typedef TYPE_1__ HE_ENT ;


 int XFREE (TYPE_1__*) ;

__attribute__((used)) static void
he_free(HE_ENT *h)
{
  XFREE(h->host);
  if (h->next != ((void*)0))
    he_free(h->next);
  XFREE(h);
}
