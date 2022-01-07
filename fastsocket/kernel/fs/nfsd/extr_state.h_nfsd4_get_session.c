
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_session {int se_ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void
nfsd4_get_session(struct nfsd4_session *ses)
{
 kref_get(&ses->se_ref);
}
