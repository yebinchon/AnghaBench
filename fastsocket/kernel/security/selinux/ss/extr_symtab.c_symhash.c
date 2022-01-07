
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashtab {int size; } ;


 unsigned int strlen (char const*) ;

__attribute__((used)) static unsigned int symhash(struct hashtab *h, const void *key)
{
 const char *p, *keyp;
 unsigned int size;
 unsigned int val;

 val = 0;
 keyp = key;
 size = strlen(keyp);
 for (p = keyp; (p - keyp) < size; p++)
  val = (val << 4 | (val >> (8*sizeof(unsigned int)-4))) ^ (*p);
 return val & (h->size - 1);
}
