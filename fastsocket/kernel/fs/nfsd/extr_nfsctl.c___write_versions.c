
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EBUSY ;
 scalar_t__ EINVAL ;
 int NFSD_AVAIL ;
 int NFSD_CLEAR ;
 int NFSD_SET ;
 unsigned int NFSD_SUPPORTED_MINOR_VERSION ;
 int NFSD_TEST ;
 int SIMPLE_TRANSACTION_LIMIT ;
 scalar_t__ nfsd_minorversion (unsigned int,int ) ;
 int nfsd_reset_versions () ;
 scalar_t__ nfsd_serv ;
 scalar_t__ nfsd_vers (int,int ) ;
 int qword_get (char**,char*,size_t) ;
 int simple_strtol (char*,char**,int ) ;
 unsigned int simple_strtoul (char*,int *,int ) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static ssize_t __write_versions(struct file *file, char *buf, size_t size)
{
 char *mesg = buf;
 char *vers, *minorp, sign;
 int len, num, remaining;
 unsigned minor;
 ssize_t tlen = 0;
 char *sep;

 if (size>0) {
  if (nfsd_serv)




   return -EBUSY;
  if (buf[size-1] != '\n')
   return -EINVAL;
  buf[size-1] = 0;

  vers = mesg;
  len = qword_get(&mesg, vers, size);
  if (len <= 0) return -EINVAL;
  do {
   sign = *vers;
   if (sign == '+' || sign == '-')
    num = simple_strtol((vers+1), &minorp, 0);
   else
    num = simple_strtol(vers, &minorp, 0);
   if (*minorp == '.') {
    if (num < 4)
     return -EINVAL;
    minor = simple_strtoul(minorp+1, ((void*)0), 0);
    if (minor == 0)
     return -EINVAL;
    if (nfsd_minorversion(minor, sign == '-' ?
           NFSD_CLEAR : NFSD_SET) < 0)
     return -EINVAL;
    goto next;
   }
   switch(num) {
   case 2:
   case 3:
   case 4:
    nfsd_vers(num, sign == '-' ? NFSD_CLEAR : NFSD_SET);
    break;
   default:
    return -EINVAL;
   }
  next:
   vers += len + 1;
  } while ((len = qword_get(&mesg, vers, size)) > 0);



  nfsd_reset_versions();
 }


 len = 0;
 sep = "";
 remaining = SIMPLE_TRANSACTION_LIMIT;
 for (num=2 ; num <= 4 ; num++)
  if (nfsd_vers(num, NFSD_AVAIL)) {
   len = snprintf(buf, remaining, "%s%c%d", sep,
           nfsd_vers(num, NFSD_TEST)?'+':'-',
           num);
   sep = " ";

   if (len > remaining)
    break;
   remaining -= len;
   buf += len;
   tlen += len;
  }
 if (nfsd_vers(4, NFSD_AVAIL))
  for (minor = 1; minor <= NFSD_SUPPORTED_MINOR_VERSION;
       minor++) {
   len = snprintf(buf, remaining, " %c4.%u",
     (nfsd_vers(4, NFSD_TEST) &&
      nfsd_minorversion(minor, NFSD_TEST)) ?
      '+' : '-',
     minor);

   if (len > remaining)
    break;
   remaining -= len;
   buf += len;
   tlen += len;
  }

 len = snprintf(buf, remaining, "\n");
 if (len > remaining)
  return -EINVAL;
 return tlen + len;
}
