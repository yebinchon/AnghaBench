
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct nfsd4_setclientid {int se_namelen; int se_callback_prog; int se_callback_netid_len; int se_callback_addr_len; int se_callback_ident; int se_callback_addr_val; int se_callback_netid_val; int se_name; TYPE_1__ se_verf; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int COPYMEM (int ,int) ;
 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ32 (int) ;
 int READ_BUF (int) ;
 int SAVEMEM (int ,int) ;

__attribute__((used)) static __be32
nfsd4_decode_setclientid(struct nfsd4_compoundargs *argp, struct nfsd4_setclientid *setclientid)
{
 DECODE_HEAD;

 READ_BUF(12);
 COPYMEM(setclientid->se_verf.data, 8);
 READ32(setclientid->se_namelen);

 READ_BUF(setclientid->se_namelen + 8);
 SAVEMEM(setclientid->se_name, setclientid->se_namelen);
 READ32(setclientid->se_callback_prog);
 READ32(setclientid->se_callback_netid_len);

 READ_BUF(setclientid->se_callback_netid_len + 4);
 SAVEMEM(setclientid->se_callback_netid_val, setclientid->se_callback_netid_len);
 READ32(setclientid->se_callback_addr_len);

 READ_BUF(setclientid->se_callback_addr_len + 4);
 SAVEMEM(setclientid->se_callback_addr_val, setclientid->se_callback_addr_len);
 READ32(setclientid->se_callback_ident);

 DECODE_TAIL;
}
