
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* link; int * name; } ;
typedef int Char ;
typedef TYPE_1__ Cell ;


 TYPE_1__* mkCell () ;
 scalar_t__ myMalloc (scalar_t__) ;
 int strcpy (int *,int *) ;
 scalar_t__ strlen (int *) ;

__attribute__((used)) static
Cell *snocString ( Cell *root, Char *name )
{
   if (root == ((void*)0)) {
      Cell *tmp = mkCell();
      tmp->name = (Char*) myMalloc ( 5 + strlen(name) );
      strcpy ( tmp->name, name );
      return tmp;
   } else {
      Cell *tmp = root;
      while (tmp->link != ((void*)0)) tmp = tmp->link;
      tmp->link = snocString ( tmp->link, name );
      return root;
   }
}
