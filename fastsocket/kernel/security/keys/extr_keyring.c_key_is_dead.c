
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct key {scalar_t__ expiry; int flags; } ;


 int KEY_FLAG_DEAD ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool key_is_dead(struct key *key, time_t limit)
{
 return test_bit(KEY_FLAG_DEAD, &key->flags) ||
  (key->expiry > 0 && key->expiry <= limit);
}
