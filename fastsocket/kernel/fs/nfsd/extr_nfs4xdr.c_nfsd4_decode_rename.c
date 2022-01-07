
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_rename {int rn_snamelen; int rn_tnamelen; int rn_tname; int rn_sname; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ32 (int) ;
 int READ_BUF (int) ;
 int SAVEMEM (int ,int) ;
 int check_filename (int ,int,int ) ;
 int nfserr_inval ;
 int nfserr_noent ;
 int status ;

__attribute__((used)) static __be32
nfsd4_decode_rename(struct nfsd4_compoundargs *argp, struct nfsd4_rename *rename)
{
 DECODE_HEAD;

 READ_BUF(4);
 READ32(rename->rn_snamelen);
 READ_BUF(rename->rn_snamelen + 4);
 SAVEMEM(rename->rn_sname, rename->rn_snamelen);
 READ32(rename->rn_tnamelen);
 READ_BUF(rename->rn_tnamelen);
 SAVEMEM(rename->rn_tname, rename->rn_tnamelen);
 if ((status = check_filename(rename->rn_sname, rename->rn_snamelen, nfserr_noent)))
  return status;
 if ((status = check_filename(rename->rn_tname, rename->rn_tnamelen, nfserr_inval)))
  return status;

 DECODE_TAIL;
}
