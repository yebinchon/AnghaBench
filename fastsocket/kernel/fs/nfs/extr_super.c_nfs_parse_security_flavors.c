
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct nfs_parsed_mount_data {int auth_flavor_len; int flags; int * auth_flavors; } ;


 int MAX_OPT_ARGS ;
 int MOUNT ;
 int NFS_MOUNT_SECFLAVOUR ;
 int RPC_AUTH_GSS_KRB5 ;
 int RPC_AUTH_GSS_KRB5I ;
 int RPC_AUTH_GSS_KRB5P ;
 int RPC_AUTH_GSS_LKEY ;
 int RPC_AUTH_GSS_LKEYI ;
 int RPC_AUTH_GSS_LKEYP ;
 int RPC_AUTH_GSS_SPKM ;
 int RPC_AUTH_GSS_SPKMI ;
 int RPC_AUTH_GSS_SPKMP ;
 int RPC_AUTH_NULL ;
 int RPC_AUTH_UNIX ;
 int dfprintk (int ,char*,char*) ;
 int match_token (char*,int ,int *) ;
 int nfs_secflavor_tokens ;

__attribute__((used)) static int nfs_parse_security_flavors(char *value,
          struct nfs_parsed_mount_data *mnt)
{
 substring_t args[MAX_OPT_ARGS];

 dfprintk(MOUNT, "NFS: parsing sec=%s option\n", value);

 switch (match_token(value, nfs_secflavor_tokens, args)) {
 case 132:
  mnt->auth_flavors[0] = RPC_AUTH_NULL;
  break;
 case 128:
  mnt->auth_flavors[0] = RPC_AUTH_UNIX;
  break;
 case 138:
  mnt->auth_flavors[0] = RPC_AUTH_GSS_KRB5;
  break;
 case 137:
  mnt->auth_flavors[0] = RPC_AUTH_GSS_KRB5I;
  break;
 case 136:
  mnt->auth_flavors[0] = RPC_AUTH_GSS_KRB5P;
  break;
 case 135:
  mnt->auth_flavors[0] = RPC_AUTH_GSS_LKEY;
  break;
 case 134:
  mnt->auth_flavors[0] = RPC_AUTH_GSS_LKEYI;
  break;
 case 133:
  mnt->auth_flavors[0] = RPC_AUTH_GSS_LKEYP;
  break;
 case 131:
  mnt->auth_flavors[0] = RPC_AUTH_GSS_SPKM;
  break;
 case 130:
  mnt->auth_flavors[0] = RPC_AUTH_GSS_SPKMI;
  break;
 case 129:
  mnt->auth_flavors[0] = RPC_AUTH_GSS_SPKMP;
  break;
 default:
  return 0;
 }

 mnt->flags |= NFS_MOUNT_SECFLAVOUR;
 mnt->auth_flavor_len = 1;
 return 1;
}
