
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int u32 ;
struct svc_rqst {int dummy; } ;
typedef int buf ;


 int memcpy (char*,char const*,int) ;
 int strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static bool
numeric_name_to_id(struct svc_rqst *rqstp, int type, const char *name, u32 namelen, uid_t *id)
{
 int ret;
 char buf[11];

 if (namelen + 1 > sizeof(buf))

  return 0;

 memcpy(buf, name, namelen);
 buf[namelen] = '\0';
 ret = strict_strtoul(name, 10, (unsigned long *)id);
 return ret == 0;
}
