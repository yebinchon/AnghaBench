
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;
typedef enum pevent_errno { ____Placeholder_pevent_errno } pevent_errno ;
 int __PEVENT_ERRNO__END ;
 int __PEVENT_ERRNO__START ;
 int memcpy (char*,char const*,int) ;
 int min (size_t,size_t) ;
 char** pevent_error_str ;
 int snprintf (char*,size_t,char*,char const*) ;
 char* strerror_r (int,char*,size_t) ;
 size_t strlen (char const*) ;

int pevent_strerror(struct pevent *pevent, enum pevent_errno errnum,
      char *buf, size_t buflen)
{
 int idx;
 const char *msg;

 if (errnum >= 0) {
  msg = strerror_r(errnum, buf, buflen);
  if (msg != buf) {
   size_t len = strlen(msg);
   memcpy(buf, msg, min(buflen - 1, len));
   *(buf + min(buflen - 1, len)) = '\0';
  }
  return 0;
 }

 if (errnum <= __PEVENT_ERRNO__START ||
     errnum >= __PEVENT_ERRNO__END)
  return -1;

 idx = errnum - __PEVENT_ERRNO__START - 1;
 msg = pevent_error_str[idx];

 switch (errnum) {
 case 133:
 case 131:
 case 129:
 case 130:
 case 128:
 case 132:
  snprintf(buf, buflen, "%s", msg);
  break;

 default:

  break;
 }

 return 0;
}
