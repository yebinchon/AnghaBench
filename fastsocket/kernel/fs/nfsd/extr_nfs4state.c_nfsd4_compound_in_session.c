
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_session {int se_sessionid; } ;
struct nfs4_sessionid {int dummy; } ;


 int memcmp (struct nfs4_sessionid*,int *,int) ;

__attribute__((used)) static bool nfsd4_compound_in_session(struct nfsd4_session *session, struct nfs4_sessionid *sid)
{
 if (!session)
  return 0;
 return !memcmp(sid, &session->se_sessionid, sizeof(*sid));
}
