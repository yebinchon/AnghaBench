
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void key ;



int lookup_user_key_possessed(const struct key *key, const void *target)
{
 return key == target;
}
