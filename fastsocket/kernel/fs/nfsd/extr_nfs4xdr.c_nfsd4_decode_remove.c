
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_remove {int rm_namelen; int rm_name; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ32 (int) ;
 int READ_BUF (int) ;
 int SAVEMEM (int ,int) ;
 int check_filename (int ,int,int ) ;
 int nfserr_noent ;
 int status ;

__attribute__((used)) static __be32
nfsd4_decode_remove(struct nfsd4_compoundargs *argp, struct nfsd4_remove *remove)
{
 DECODE_HEAD;

 READ_BUF(4);
 READ32(remove->rm_namelen);
 READ_BUF(remove->rm_namelen);
 SAVEMEM(remove->rm_name, remove->rm_namelen);
 if ((status = check_filename(remove->rm_name, remove->rm_namelen, nfserr_noent)))
  return status;

 DECODE_TAIL;
}
