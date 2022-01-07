
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdef {char* name; } ;


 int SLIST_INSERT_HEAD (int *,struct tdef*,int ) ;
 struct tdef* calloc (int,int) ;
 int err (int,int *) ;
 int link ;
 int tdefs ;

__attribute__((used)) static void
save_typdef(char *name)
{
 struct tdef *t;

 t = calloc(1, sizeof(struct tdef));
 if (t == ((void*)0))
  err(1, ((void*)0));

 t->name = name;
 SLIST_INSERT_HEAD(&tdefs, t, link);
}
