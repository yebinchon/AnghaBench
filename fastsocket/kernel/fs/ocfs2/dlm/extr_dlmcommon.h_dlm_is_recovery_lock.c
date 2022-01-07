
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLM_RECOVERY_LOCK_NAME ;
 int DLM_RECOVERY_LOCK_NAME_LEN ;
 scalar_t__ memcmp (char const*,int ,int) ;

__attribute__((used)) static inline int dlm_is_recovery_lock(const char *lock_name, int name_len)
{
 if (name_len == DLM_RECOVERY_LOCK_NAME_LEN &&
     memcmp(lock_name, DLM_RECOVERY_LOCK_NAME, name_len)==0)
  return 1;
 return 0;
}
