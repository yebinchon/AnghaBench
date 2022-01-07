
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias {struct alias* val; struct alias* name; } ;


 int ckfree (struct alias*) ;

__attribute__((used)) static void
freealias(struct alias *ap)
{
 ckfree(ap->name);
 ckfree(ap->val);
 ckfree(ap);
}
