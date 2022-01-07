
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_iostats {int dummy; } ;


 int free_percpu (struct nfs_iostats*) ;

__attribute__((used)) static inline void nfs_free_iostats(struct nfs_iostats *stats)
{
 if (stats != ((void*)0))
  free_percpu(stats);
}
