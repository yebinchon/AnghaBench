
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SmiNode ;
typedef int SmiElement ;


 int print_type (int ) ;
 int printf (char*) ;
 int smiGetElementNode (int *) ;
 int * smiGetFirstElement (int *) ;
 int * smiGetNextElement (int *) ;

__attribute__((used)) static void
print_index(SmiNode *row)
{
 SmiElement *e;

 e = smiGetFirstElement(row);
 while (e != ((void*)0)) {
  printf(" ");
  print_type(smiGetElementNode(e));
  e = smiGetNextElement(e);
 }
}
