
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_message {int m_type; int m_hash; } ;
struct dlm_ls {int ls_count; } ;







 int DLM_MSG_LOOKUP ;
 int DLM_MSG_LOOKUP_REPLY ;
 int DLM_MSG_REMOVE ;




 int dlm_hash2nodeid (struct dlm_ls*,int ) ;
 scalar_t__ dlm_is_removed (struct dlm_ls*,int) ;
 int dlm_no_directory (struct dlm_ls*) ;
 int dlm_our_nodeid () ;

__attribute__((used)) static int purge_request(struct dlm_ls *ls, struct dlm_message *ms, int nodeid)
{
 uint32_t type = ms->m_type;


 if (!ls->ls_count)
  return 1;

 if (dlm_is_removed(ls, nodeid))
  return 1;




 if (type == DLM_MSG_REMOVE ||
     type == DLM_MSG_LOOKUP ||
     type == DLM_MSG_LOOKUP_REPLY)
  return 1;

 if (!dlm_no_directory(ls))
  return 0;




 switch (type) {
 case 131:
 case 134:
 case 129:
 case 136:



  if (dlm_hash2nodeid(ls, ms->m_hash) != dlm_our_nodeid())
   return 1;
  break;

 case 130:
 case 133:
 case 128:
 case 135:
 case 132:



  if (dlm_hash2nodeid(ls, ms->m_hash) != nodeid)
   return 1;
  break;
 }

 return 0;
}
