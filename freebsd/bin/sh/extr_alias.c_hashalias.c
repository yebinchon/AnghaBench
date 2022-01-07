
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias {int dummy; } ;


 unsigned int ATABSIZE ;
 struct alias** atab ;

__attribute__((used)) static struct alias **
hashalias(const char *p)
{
 unsigned int hashval;

 hashval = (unsigned char)*p << 4;
 while (*p)
  hashval+= *p++;
 return &atab[hashval % ATABSIZE];
}
