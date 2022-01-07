
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc_class_hash {int hashsize; int hash; } ;


 int qdisc_class_hash_free (int ,int ) ;

void qdisc_class_hash_destroy(struct Qdisc_class_hash *clhash)
{
 qdisc_class_hash_free(clhash->hash, clhash->hashsize);
}
