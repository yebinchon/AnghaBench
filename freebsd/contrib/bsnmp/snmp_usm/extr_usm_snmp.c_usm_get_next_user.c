
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint ;
struct usm_user {int dummy; } ;
struct asn_oid {scalar_t__ len; } ;


 int SNMP_ADM_STR32_SIZ ;
 int SNMP_ENGINE_ID_SIZ ;
 struct usm_user* usm_find_user (int *,int ,char*) ;
 struct usm_user* usm_first_user () ;
 struct usm_user* usm_next_user (struct usm_user*) ;
 scalar_t__ usm_user_index_decode (struct asn_oid const*,scalar_t__,int *,int *,char*) ;

__attribute__((used)) static struct usm_user *
usm_get_next_user(const struct asn_oid *oid, uint sub)
{
 uint32_t enginelen;
 char username[SNMP_ADM_STR32_SIZ];
 uint8_t engineid[SNMP_ENGINE_ID_SIZ];
 struct usm_user *uuser;

 if (oid->len - sub == 0)
  return (usm_first_user());

 if (usm_user_index_decode(oid, sub, engineid, &enginelen, username) < 0)
  return (((void*)0));

 if ((uuser = usm_find_user(engineid, enginelen, username)) != ((void*)0))
  return (usm_next_user(uuser));

 return (((void*)0));
}
