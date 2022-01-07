
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compoundargs {int dummy; } ;
struct nfsd4_commit {int co_count; int co_offset; } ;
typedef int __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ32 (int ) ;
 int READ64 (int ) ;
 int READ_BUF (int) ;

__attribute__((used)) static __be32
nfsd4_decode_commit(struct nfsd4_compoundargs *argp, struct nfsd4_commit *commit)
{
 DECODE_HEAD;

 READ_BUF(12);
 READ64(commit->co_offset);
 READ32(commit->co_count);

 DECODE_TAIL;
}
