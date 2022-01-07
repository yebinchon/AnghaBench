
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int topo_hdl_t ;
typedef int tnode_t ;
typedef int nvlist_t ;
struct TYPE_7__ {char* libzfs_chassis_id; TYPE_2__* libzfs_fru_list; TYPE_2__** libzfs_fru_hash; } ;
typedef TYPE_1__ libzfs_handle_t ;
struct TYPE_8__ {struct TYPE_8__* zf_next; struct TYPE_8__* zf_chain; struct TYPE_8__* zf_device; int * zf_fru; } ;
typedef TYPE_2__ libzfs_fru_t ;


 char* FM_FMRI_AUTHORITY ;
 char* FM_FMRI_AUTH_CHASSIS ;
 int TOPO_WALK_NEXT ;
 scalar_t__ _topo_fmri_nvl2str (int *,int *,char**,int*) ;
 int _topo_hdl_strfree (int *,char*) ;
 scalar_t__ _topo_node_fru (int *,int **,int *,int*) ;
 int _topo_node_name (int *) ;
 scalar_t__ _topo_prop_get_string (int *,char*,char*,char**,int*) ;
 TYPE_2__* calloc (int,int) ;
 int free (TYPE_2__*) ;
 size_t fru_strhash (TYPE_2__*) ;
 int * libzfs_fru_lookup (TYPE_1__*,char*) ;
 int nvlist_free (int *) ;
 scalar_t__ strcmp (int ,char*) ;
 void* strdup (char*) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int
libzfs_fru_gather(topo_hdl_t *thp, tnode_t *tn, void *arg)
{
 libzfs_handle_t *hdl = arg;
 nvlist_t *fru;
 char *devpath, *frustr;
 int err;
 libzfs_fru_t *frup;
 size_t idx;





 if (hdl->libzfs_chassis_id[0] == '\0' &&
     strcmp(_topo_node_name(tn), "chassis") == 0) {
  if (_topo_prop_get_string(tn, FM_FMRI_AUTHORITY,
      FM_FMRI_AUTH_CHASSIS, &devpath, &err) == 0)
   (void) strlcpy(hdl->libzfs_chassis_id, devpath,
       sizeof (hdl->libzfs_chassis_id));
 }




 if (strcmp(_topo_node_name(tn), "disk") != 0)
  return (TOPO_WALK_NEXT);




 if (_topo_prop_get_string(tn, "io", "devfs-path", &devpath, &err) != 0)
  return (TOPO_WALK_NEXT);

 if (libzfs_fru_lookup(hdl, devpath) != ((void*)0)) {
  _topo_hdl_strfree(thp, devpath);
  return (TOPO_WALK_NEXT);
 }

 if (_topo_node_fru(tn, &fru, ((void*)0), &err) != 0) {
  _topo_hdl_strfree(thp, devpath);
  return (TOPO_WALK_NEXT);
 }




 if (_topo_fmri_nvl2str(thp, fru, &frustr, &err) != 0) {
  nvlist_free(fru);
  _topo_hdl_strfree(thp, devpath);
  return (TOPO_WALK_NEXT);
 }

 nvlist_free(fru);




 if ((frup = calloc(sizeof (libzfs_fru_t), 1)) == ((void*)0)) {
  _topo_hdl_strfree(thp, devpath);
  _topo_hdl_strfree(thp, frustr);
  return (TOPO_WALK_NEXT);
 }

 if ((frup->zf_device = strdup(devpath)) == ((void*)0) ||
     (frup->zf_fru = strdup(frustr)) == ((void*)0)) {
  free(frup->zf_device);
  free(frup);
  _topo_hdl_strfree(thp, devpath);
  _topo_hdl_strfree(thp, frustr);
  return (TOPO_WALK_NEXT);
 }

 _topo_hdl_strfree(thp, devpath);
 _topo_hdl_strfree(thp, frustr);

 idx = fru_strhash(frup->zf_device);
 frup->zf_chain = hdl->libzfs_fru_hash[idx];
 hdl->libzfs_fru_hash[idx] = frup;
 frup->zf_next = hdl->libzfs_fru_list;
 hdl->libzfs_fru_list = frup;

 return (TOPO_WALK_NEXT);
}
