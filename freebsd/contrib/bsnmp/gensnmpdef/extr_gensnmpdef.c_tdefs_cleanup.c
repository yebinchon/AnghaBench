
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdef {int dummy; } ;


 struct tdef* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int free (struct tdef*) ;
 int link ;
 int tdefs ;

__attribute__((used)) static void
tdefs_cleanup(void)
{
 struct tdef *t;

 while ((t = SLIST_FIRST(&tdefs)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&tdefs, link);
  free(t);
 }
}
