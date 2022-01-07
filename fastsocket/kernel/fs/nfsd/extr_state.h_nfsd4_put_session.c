
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_session {int se_ref; } ;
struct kref {int dummy; } ;


 int kref_put (int *,void (*) (struct kref*)) ;

__attribute__((used)) static inline void
nfsd4_put_session(struct nfsd4_session *ses)
{
 extern void free_session(struct kref *kref);
 kref_put(&ses->se_ref, free_session);
}
