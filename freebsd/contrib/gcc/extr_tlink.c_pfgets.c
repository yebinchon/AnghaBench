
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int tfgets (int *) ;
 char* xstrdup (int ) ;

__attribute__((used)) static char *
pfgets (FILE *stream)
{
  return xstrdup (tfgets (stream));
}
