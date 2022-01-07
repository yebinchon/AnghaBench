
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long time_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 scalar_t__ errno ;
 char* getenv (char*) ;
 long long strtoll (char*,char**,int) ;
 long long time (int *) ;

int
elftc_timestamp(time_t *timestamp)
{
 long long source_date_epoch;
 char *env, *eptr;

 if ((env = getenv("SOURCE_DATE_EPOCH")) != ((void*)0)) {
  errno = 0;
  source_date_epoch = strtoll(env, &eptr, 10);
  if (*eptr != '\0')
   errno = EINVAL;
  if (source_date_epoch < 0)
   errno = ERANGE;
  if (errno != 0)
   return (-1);
  *timestamp = source_date_epoch;
  return (0);
 }
 *timestamp = time(((void*)0));
 return (0);
}
