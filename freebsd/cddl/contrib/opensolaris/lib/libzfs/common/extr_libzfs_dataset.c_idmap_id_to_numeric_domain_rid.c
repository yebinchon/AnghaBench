
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int idmap_stat ;
typedef int idmap_rid_t ;
typedef int idmap_get_handle_t ;
typedef scalar_t__ boolean_t ;


 int EINVAL ;
 int IDMAP_REQ_FLG_USE_CACHE ;
 int IDMAP_SUCCESS ;
 int assert (int) ;
 int idmap_get_create (int **) ;
 int idmap_get_destroy (int *) ;
 int idmap_get_mappings (int *) ;
 int idmap_get_sidbygid (int *,int ,int ,char**,int *,int*) ;
 int idmap_get_sidbyuid (int *,int ,int ,char**,int *,int*) ;

__attribute__((used)) static int
idmap_id_to_numeric_domain_rid(uid_t id, boolean_t isuser,
    char **domainp, idmap_rid_t *ridp)
{
 assert(!"invalid code path");
 return (EINVAL);

}
