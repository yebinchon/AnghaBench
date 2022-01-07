
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;


 int ENOKEY ;
 int key_reject_and_link (struct key*,unsigned int,int ,struct key*,struct key*) ;

int key_negate_and_link(struct key *key,
   unsigned timeout,
   struct key *keyring,
   struct key *instkey)
{
 return key_reject_and_link(key, timeout, ENOKEY, keyring, instkey);
}
