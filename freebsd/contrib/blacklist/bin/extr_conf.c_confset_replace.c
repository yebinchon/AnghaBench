
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct confset {int dummy; } ;


 int confset_free (struct confset*) ;
 int confset_init (struct confset*) ;

__attribute__((used)) static void
confset_replace(struct confset *dc, struct confset *sc)
{
 struct confset tc;
 tc = *dc;
 *dc = *sc;
 confset_init(sc);
 confset_free(&tc);
}
