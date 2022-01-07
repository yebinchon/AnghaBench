
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_secinfo {int si_namelen; int si_name; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef scalar_t__ __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ32 (int) ;
 int READ_BUF (int) ;
 int SAVEMEM (int ,int) ;
 scalar_t__ check_filename (int ,int,int ) ;
 int nfserr_noent ;
 scalar_t__ status ;

__attribute__((used)) static __be32
nfsd4_decode_secinfo(struct nfsd4_compoundargs *argp,
       struct nfsd4_secinfo *secinfo)
{
 DECODE_HEAD;

 READ_BUF(4);
 READ32(secinfo->si_namelen);
 READ_BUF(secinfo->si_namelen);
 SAVEMEM(secinfo->si_name, secinfo->si_namelen);
 status = check_filename(secinfo->si_name, secinfo->si_namelen,
        nfserr_noent);
 if (status)
  return status;
 DECODE_TAIL;
}
