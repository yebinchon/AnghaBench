
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ale_name; } ;
typedef TYPE_1__ alist_el_t ;



__attribute__((used)) static int
alist_hash(int nbuckets, void *arg)
{
 alist_el_t *el = arg;
 uintptr_t num = (uintptr_t)el->ale_name;

 return (num % nbuckets);
}
