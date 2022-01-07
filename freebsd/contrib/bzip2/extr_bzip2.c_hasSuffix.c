
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Int32 ;
typedef int const Char ;
typedef int Bool ;


 int False ;
 int True ;
 scalar_t__ strcmp (int const*,int const*) ;
 scalar_t__ strlen (int const*) ;

__attribute__((used)) static
Bool hasSuffix ( Char* s, const Char* suffix )
{
   Int32 ns = strlen(s);
   Int32 nx = strlen(suffix);
   if (ns < nx) return False;
   if (strcmp(s + ns - nx, suffix) == 0) return True;
   return False;
}
