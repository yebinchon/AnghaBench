
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tomoyo_profile {int * value; } ;
struct TYPE_2__ {int current_value; } ;
typedef int DEFINE_MUTEX ;


 int TOMOYO_MAX_CONTROL_INDEX ;
 unsigned int const TOMOYO_MAX_PROFILES ;
 int mb () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tomoyo_profile* tomoyo_alloc_element (int) ;
 TYPE_1__* tomoyo_control_array ;
 struct tomoyo_profile** tomoyo_profile_ptr ;

__attribute__((used)) static struct tomoyo_profile *tomoyo_find_or_assign_new_profile(const unsigned
        int profile)
{
 static DEFINE_MUTEX(lock);
 struct tomoyo_profile *ptr = ((void*)0);
 int i;

 if (profile >= TOMOYO_MAX_PROFILES)
  return ((void*)0);
 mutex_lock(&lock);
 ptr = tomoyo_profile_ptr[profile];
 if (ptr)
  goto ok;
 ptr = tomoyo_alloc_element(sizeof(*ptr));
 if (!ptr)
  goto ok;
 for (i = 0; i < TOMOYO_MAX_CONTROL_INDEX; i++)
  ptr->value[i] = tomoyo_control_array[i].current_value;
 mb();
 tomoyo_profile_ptr[profile] = ptr;
 ok:
 mutex_unlock(&lock);
 return ptr;
}
