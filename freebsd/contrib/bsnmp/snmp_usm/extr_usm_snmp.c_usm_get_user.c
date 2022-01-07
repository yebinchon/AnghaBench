
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint ;
struct usm_user {int dummy; } ;
struct asn_oid {int dummy; } ;


 int SNMP_ADM_STR32_SIZ ;
 int SNMP_ENGINE_ID_SIZ ;
 struct usm_user* usm_find_user (int *,int ,char*) ;
 scalar_t__ usm_user_index_decode (struct asn_oid const*,int ,int *,int *,char*) ;

__attribute__((used)) static struct usm_user *
usm_get_user(const struct asn_oid *oid, uint sub)
{
 uint32_t enginelen;
 char username[SNMP_ADM_STR32_SIZ];
 uint8_t engineid[SNMP_ENGINE_ID_SIZ];

 if (usm_user_index_decode(oid, sub, engineid, &enginelen, username) < 0)
  return (((void*)0));

 return (usm_find_user(engineid, enginelen, username));
}
