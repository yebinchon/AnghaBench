
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {scalar_t__ description; } ;


 scalar_t__ strcmp (scalar_t__,void const*) ;

__attribute__((used)) static int keyring_match(const struct key *keyring, const void *description)
{
 return keyring->description &&
  strcmp(keyring->description, description) == 0;
}
