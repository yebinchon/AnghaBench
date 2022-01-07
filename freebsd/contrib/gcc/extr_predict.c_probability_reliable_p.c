
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HITRATE (int) ;
 scalar_t__ PROFILE_GUESSED ;
 scalar_t__ PROFILE_READ ;
 scalar_t__ profile_status ;

__attribute__((used)) static bool
probability_reliable_p (int prob)
{
  return (profile_status == PROFILE_READ
   || (profile_status == PROFILE_GUESSED
       && (prob <= HITRATE (1) || prob >= HITRATE (99))));
}
