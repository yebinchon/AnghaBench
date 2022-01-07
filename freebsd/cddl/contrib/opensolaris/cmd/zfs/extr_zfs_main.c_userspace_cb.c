
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ zfs_userquota_prop_t ;
typedef int zfs_sort_column_t ;
typedef int uu_avl_t ;
typedef int uu_avl_pool_t ;
typedef int uu_avl_index_t ;
struct TYPE_11__ {scalar_t__ member_1; int * member_0; } ;
typedef TYPE_1__ us_sort_info_t ;
struct TYPE_12__ {int * usn_nvl; int usn_avlnode; } ;
typedef TYPE_2__ us_node_t ;
struct TYPE_13__ {scalar_t__ cb_prop; size_t* cb_width; scalar_t__ cb_nicenum; scalar_t__ cb_sid2posix; scalar_t__ cb_numname; int * cb_sortcol; int * cb_avl; int * cb_avl_pool; } ;
typedef TYPE_3__ us_cbdata_t ;
typedef int uint64_t ;
typedef int uid_t ;
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;
typedef int sizebuf ;
typedef int sid ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int IDMAP_REQ_FLG_USE_CACHE ;
 int MAXNAMELEN ;
 int NV_UNIQUE_NAME ;
 unsigned int USTYPE_PSX_GRP ;
 unsigned int USTYPE_PSX_USR ;
 unsigned int USTYPE_SMB_GRP ;
 unsigned int USTYPE_SMB_USR ;
 scalar_t__ ZFS_PROP_GROUPQUOTA ;
 scalar_t__ ZFS_PROP_GROUPUSED ;
 scalar_t__ ZFS_PROP_USERUSED ;
 int free (TYPE_2__*) ;
 struct group* getgrgid (int) ;
 struct passwd* getpwuid (int) ;
 char* gettext (char const*) ;
 int idmap_getwinnamebygid (int,int,char**,int *) ;
 int idmap_getwinnamebyuid (int,int,char**,int *) ;
 int nomem () ;
 scalar_t__ nvlist_add_boolean_value (int *,char*,int ) ;
 scalar_t__ nvlist_add_string (int *,char*,char*) ;
 scalar_t__ nvlist_add_uint32 (int *,char*,unsigned int) ;
 scalar_t__ nvlist_add_uint64 (int *,char*,int) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_exists (int *,char*) ;
 int nvlist_free (int *) ;
 TYPE_2__* safe_malloc (int) ;
 int sid_to_id (char*,int ,int*) ;
 size_t snprintf (char*,int,char*,...) ;
 size_t strlen (char*) ;
 int us_field_index (char*) ;
 char* us_type2str (unsigned int) ;
 TYPE_2__* uu_avl_find (int *,TYPE_2__*,TYPE_1__*,int *) ;
 int uu_avl_insert (int *,TYPE_2__*,int ) ;
 int uu_avl_node_init (TYPE_2__*,int *,int *) ;
 int zfs_nicenum (int,char*,int) ;

__attribute__((used)) static int
userspace_cb(void *arg, const char *domain, uid_t rid, uint64_t space)
{
 us_cbdata_t *cb = (us_cbdata_t *)arg;
 zfs_userquota_prop_t prop = cb->cb_prop;
 char *name = ((void*)0);
 char *propname;
 char sizebuf[32];
 us_node_t *node;
 uu_avl_pool_t *avl_pool = cb->cb_avl_pool;
 uu_avl_t *avl = cb->cb_avl;
 uu_avl_index_t idx;
 nvlist_t *props;
 us_node_t *n;
 zfs_sort_column_t *sortcol = cb->cb_sortcol;
 unsigned type = 0;
 const char *typestr;
 size_t namelen;
 size_t typelen;
 size_t sizelen;
 int typeidx, nameidx, sizeidx;
 us_sort_info_t sortinfo = { sortcol, cb->cb_numname };
 boolean_t smbentity = B_FALSE;

 if (nvlist_alloc(&props, NV_UNIQUE_NAME, 0) != 0)
  nomem();
 node = safe_malloc(sizeof (us_node_t));
 uu_avl_node_init(node, &node->usn_avlnode, avl_pool);
 node->usn_nvl = props;

 if (domain != ((void*)0) && domain[0] != '\0') {

  char sid[MAXNAMELEN + 32];
  uid_t id;





  smbentity = B_TRUE;

  (void) snprintf(sid, sizeof (sid), "%s-%u", domain, rid);

  if (prop == ZFS_PROP_GROUPUSED || prop == ZFS_PROP_GROUPQUOTA) {
   type = USTYPE_SMB_GRP;



  } else {
   type = USTYPE_SMB_USR;



  }
 }

 if (cb->cb_sid2posix || domain == ((void*)0) || domain[0] == '\0') {

  if (prop == ZFS_PROP_GROUPUSED || prop == ZFS_PROP_GROUPQUOTA) {
   type = USTYPE_PSX_GRP;
   if (!cb->cb_numname) {
    struct group *g;

    if ((g = getgrgid(rid)) != ((void*)0))
     name = g->gr_name;
   }
  } else {
   type = USTYPE_PSX_USR;
   if (!cb->cb_numname) {
    struct passwd *p;

    if ((p = getpwuid(rid)) != ((void*)0))
     name = p->pw_name;
   }
  }
 }






 if (cb->cb_sid2posix &&
     nvlist_add_boolean_value(props, "smbentity", smbentity) != 0)
  nomem();


 typestr = us_type2str(type);
 typelen = strlen(gettext(typestr));
 typeidx = us_field_index("type");
 if (typelen > cb->cb_width[typeidx])
  cb->cb_width[typeidx] = typelen;
 if (nvlist_add_uint32(props, "type", type) != 0)
  nomem();


 if ((cb->cb_numname && cb->cb_sid2posix) || name == ((void*)0)) {
  if (nvlist_add_uint64(props, "name", rid) != 0)
   nomem();
  namelen = snprintf(((void*)0), 0, "%u", rid);
 } else {
  if (nvlist_add_string(props, "name", name) != 0)
   nomem();
  namelen = strlen(name);
 }
 nameidx = us_field_index("name");
 if (namelen > cb->cb_width[nameidx])
  cb->cb_width[nameidx] = namelen;





 if ((n = uu_avl_find(avl, node, &sortinfo, &idx)) == ((void*)0)) {
  uu_avl_insert(avl, node, idx);
 } else {
  nvlist_free(props);
  free(node);
  node = n;
  props = node->usn_nvl;
 }


 if (cb->cb_nicenum)
  zfs_nicenum(space, sizebuf, sizeof (sizebuf));
 else
  (void) snprintf(sizebuf, sizeof (sizebuf), "%llu", space);
 sizelen = strlen(sizebuf);
 if (prop == ZFS_PROP_USERUSED || prop == ZFS_PROP_GROUPUSED) {
  propname = "used";
  if (!nvlist_exists(props, "quota"))
   (void) nvlist_add_uint64(props, "quota", 0);
 } else {
  propname = "quota";
  if (!nvlist_exists(props, "used"))
   (void) nvlist_add_uint64(props, "used", 0);
 }
 sizeidx = us_field_index(propname);
 if (sizelen > cb->cb_width[sizeidx])
  cb->cb_width[sizeidx] = sizelen;

 if (nvlist_add_uint64(props, propname, space) != 0)
  nomem();

 return (0);
}
