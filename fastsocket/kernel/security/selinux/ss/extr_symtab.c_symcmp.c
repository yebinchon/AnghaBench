
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashtab {int dummy; } ;


 int strcmp (char const*,char const*) ;

__attribute__((used)) static int symcmp(struct hashtab *h, const void *key1, const void *key2)
{
 const char *keyp1, *keyp2;

 keyp1 = key1;
 keyp2 = key2;
 return strcmp(keyp1, keyp2);
}
