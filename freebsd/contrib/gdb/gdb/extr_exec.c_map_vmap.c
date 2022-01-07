
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_and_bfd {struct vmap* pvmap; int * pbfd; } ;
struct vmap {char* name; char* member; struct vmap* nxt; int * bfd; } ;
typedef int bfd ;


 char* bfd_get_filename (int *) ;
 int bfd_map_over_sections (int *,int ,struct vmap_and_bfd*) ;
 int bfdsec_to_vmap ;
 int memset (char*,char,int) ;
 struct vmap* vmap ;
 scalar_t__ xmalloc (int) ;

struct vmap *
map_vmap (bfd *abfd, bfd *arch)
{
  struct vmap_and_bfd vmap_bfd;
  struct vmap *vp, **vpp;

  vp = (struct vmap *) xmalloc (sizeof (*vp));
  memset ((char *) vp, '\0', sizeof (*vp));
  vp->nxt = 0;
  vp->bfd = abfd;
  vp->name = bfd_get_filename (arch ? arch : abfd);
  vp->member = arch ? bfd_get_filename (abfd) : "";

  vmap_bfd.pbfd = arch;
  vmap_bfd.pvmap = vp;
  bfd_map_over_sections (abfd, bfdsec_to_vmap, &vmap_bfd);


  for (vpp = &vmap; *vpp; vpp = &(*vpp)->nxt)
    ;
  *vpp = vp;

  return vp;
}
