
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Int32 ;


 void* malloc (size_t) ;
 int outOfMemory () ;

__attribute__((used)) static
void *myMalloc ( Int32 n )
{
   void* p;

   p = malloc ( (size_t)n );
   if (p == ((void*)0)) outOfMemory ();
   return p;
}
