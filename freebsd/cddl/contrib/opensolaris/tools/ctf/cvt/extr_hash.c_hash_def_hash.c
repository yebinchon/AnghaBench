
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
hash_def_hash(int nbuckets, void *arg)
{
 uintptr_t data = (uintptr_t) arg;
 return (data % nbuckets);
}
