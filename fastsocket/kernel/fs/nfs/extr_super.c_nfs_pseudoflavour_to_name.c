
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rpc_authflavor_t ;
__attribute__((used)) static const char *nfs_pseudoflavour_to_name(rpc_authflavor_t flavour)
{
 static const struct {
  rpc_authflavor_t flavour;
  const char *str;
 } sec_flavours[] = {
  { 130, "null" },
  { 129, "sys" },
  { 139, "krb5" },
  { 138, "krb5i" },
  { 137, "krb5p" },
  { 136, "lkey" },
  { 135, "lkeyi" },
  { 134, "lkeyp" },
  { 133, "spkm" },
  { 132, "spkmi" },
  { 131, "spkmp" },
  { 128, "unknown" }
 };
 int i;

 for (i = 0; sec_flavours[i].flavour != 128; i++) {
  if (sec_flavours[i].flavour == flavour)
   break;
 }
 return sec_flavours[i].str;
}
