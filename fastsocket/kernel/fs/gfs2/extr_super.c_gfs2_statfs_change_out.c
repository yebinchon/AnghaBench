
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_statfs_change_host {int sc_dinodes; int sc_free; int sc_total; } ;
struct gfs2_statfs_change {void* sc_dinodes; void* sc_free; void* sc_total; } ;


 void* cpu_to_be64 (int ) ;

__attribute__((used)) static void gfs2_statfs_change_out(const struct gfs2_statfs_change_host *sc, void *buf)
{
 struct gfs2_statfs_change *str = buf;

 str->sc_total = cpu_to_be64(sc->sc_total);
 str->sc_free = cpu_to_be64(sc->sc_free);
 str->sc_dinodes = cpu_to_be64(sc->sc_dinodes);
}
