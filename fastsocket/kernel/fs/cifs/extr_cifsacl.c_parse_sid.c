
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_sid {int num_subauth; int * sub_auth; int revision; } ;


 int EINVAL ;
 int cERROR (int,char*,struct cifs_sid*) ;
 int cFYI (int,char*,int,...) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int parse_sid(struct cifs_sid *psid, char *end_of_acl)
{




 if (end_of_acl < (char *)psid + 8) {
  cERROR(1, "ACL too small to parse SID %p", psid);
  return -EINVAL;
 }
 return 0;
}
