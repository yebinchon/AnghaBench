
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct confset {int cs_c; } ;


 int confset_init (struct confset*) ;
 int free (int ) ;

__attribute__((used)) static void
confset_free(struct confset *cs)
{
 free(cs->cs_c);
 confset_init(cs);
}
