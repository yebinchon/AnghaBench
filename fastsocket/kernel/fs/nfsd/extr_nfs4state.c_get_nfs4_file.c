
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file {int fi_ref; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void
get_nfs4_file(struct nfs4_file *fi)
{
 atomic_inc(&fi->fi_ref);
}
