
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int vdev_children; char* vdev_path; struct TYPE_4__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;


 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char const*,int) ;
 char* strrchr (char*,char) ;
 unsigned int strtoul (char const*,char**,int) ;

__attribute__((used)) static vdev_t *
zdb_vdev_lookup(vdev_t *vdev, const char *path)
{
 char *s, *p, *q;
 unsigned i;

 if (vdev == ((void*)0))
  return (((void*)0));


 i = strtoul(path, &s, 10);
 if (s == path || (s && *s != '.' && *s != '\0'))
  goto name;
 if (i >= vdev->vdev_children)
  return (((void*)0));

 vdev = vdev->vdev_child[i];
 if (*s == '\0')
  return (vdev);
 return (zdb_vdev_lookup(vdev, s+1));

name:
 for (i = 0; i < vdev->vdev_children; i++) {
  vdev_t *vc = vdev->vdev_child[i];

  if (vc->vdev_path == ((void*)0)) {
   vc = zdb_vdev_lookup(vc, path);
   if (vc == ((void*)0))
    continue;
   else
    return (vc);
  }

  p = strrchr(vc->vdev_path, '/');
  p = p ? p + 1 : vc->vdev_path;
  q = &vc->vdev_path[strlen(vc->vdev_path) - 2];

  if (strcmp(vc->vdev_path, path) == 0)
   return (vc);
  if (strcmp(p, path) == 0)
   return (vc);
  if (strcmp(q, "s0") == 0 && strncmp(p, path, q - p) == 0)
   return (vc);
 }

 return (((void*)0));
}
