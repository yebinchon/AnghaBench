
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_target {char* uid_str; int uid; } ;
struct passwd {int pw_uid; } ;
typedef enum perf_target_errno { ____Placeholder_perf_target_errno } perf_target_errno ;
typedef int buf ;


 int PERF_ERRNO_TARGET__INVALID_UID ;
 int PERF_ERRNO_TARGET__SUCCESS ;
 int PERF_ERRNO_TARGET__USER_NOT_FOUND ;
 int UINT_MAX ;
 int getpwnam_r (char const*,struct passwd*,char*,int,struct passwd**) ;
 int getpwuid_r (int,struct passwd*,char*,int,struct passwd**) ;
 int strtol (char const*,char**,int) ;

enum perf_target_errno perf_target__parse_uid(struct perf_target *target)
{
 struct passwd pwd, *result;
 char buf[1024];
 const char *str = target->uid_str;

 target->uid = UINT_MAX;
 if (str == ((void*)0))
  return PERF_ERRNO_TARGET__SUCCESS;


 getpwnam_r(str, &pwd, buf, sizeof(buf), &result);

 if (result == ((void*)0)) {



  char *endptr;
  int uid = strtol(str, &endptr, 10);

  if (*endptr != '\0')
   return PERF_ERRNO_TARGET__INVALID_UID;

  getpwuid_r(uid, &pwd, buf, sizeof(buf), &result);

  if (result == ((void*)0))
   return PERF_ERRNO_TARGET__USER_NOT_FOUND;
 }

 target->uid = result->pw_uid;
 return PERF_ERRNO_TARGET__SUCCESS;
}
