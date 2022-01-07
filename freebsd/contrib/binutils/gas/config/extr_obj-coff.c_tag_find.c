
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 scalar_t__ hash_find (int ,char*) ;
 int tag_hash ;

__attribute__((used)) static symbolS *
tag_find (char *name)
{
  return (symbolS *) hash_find (tag_hash, name);
}
