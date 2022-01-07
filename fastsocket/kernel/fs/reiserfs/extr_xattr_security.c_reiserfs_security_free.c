
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_security_handle {int * value; int * name; } ;


 int kfree (int *) ;

void reiserfs_security_free(struct reiserfs_security_handle *sec)
{
 kfree(sec->name);
 kfree(sec->value);
 sec->name = ((void*)0);
 sec->value = ((void*)0);
}
