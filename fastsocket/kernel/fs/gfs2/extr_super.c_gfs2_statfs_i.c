
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_statfs_change_host {scalar_t__ sc_total; scalar_t__ sc_free; scalar_t__ sc_dinodes; } ;
struct gfs2_sbd {int sd_statfs_spin; struct gfs2_statfs_change_host sd_statfs_local; struct gfs2_statfs_change_host sd_statfs_master; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int gfs2_statfs_i(struct gfs2_sbd *sdp, struct gfs2_statfs_change_host *sc)
{
 struct gfs2_statfs_change_host *m_sc = &sdp->sd_statfs_master;
 struct gfs2_statfs_change_host *l_sc = &sdp->sd_statfs_local;

 spin_lock(&sdp->sd_statfs_spin);

 *sc = *m_sc;
 sc->sc_total += l_sc->sc_total;
 sc->sc_free += l_sc->sc_free;
 sc->sc_dinodes += l_sc->sc_dinodes;

 spin_unlock(&sdp->sd_statfs_spin);

 if (sc->sc_free < 0)
  sc->sc_free = 0;
 if (sc->sc_free > sc->sc_total)
  sc->sc_free = sc->sc_total;
 if (sc->sc_dinodes < 0)
  sc->sc_dinodes = 0;

 return 0;
}
