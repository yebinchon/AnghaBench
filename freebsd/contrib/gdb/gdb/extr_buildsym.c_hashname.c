
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASHSIZE ;
 int hash (char*,int ) ;
 int strlen (char*) ;

int
hashname (char *name)
{
    return (hash(name,strlen(name)) % HASHSIZE);
}
