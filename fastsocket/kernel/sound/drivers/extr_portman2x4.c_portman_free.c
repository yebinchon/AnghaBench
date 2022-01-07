
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct portman {int dummy; } ;


 int kfree (struct portman*) ;

__attribute__((used)) static int portman_free(struct portman *pm)
{
 kfree(pm);
 return 0;
}
