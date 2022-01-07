
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int description; } ;


 scalar_t__ strcmp (int ,void const*) ;

int user_match(const struct key *key, const void *description)
{
 return strcmp(key->description, description) == 0;
}
