
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int io_stats; } ;
struct nfs_iostats {int * events; } ;
typedef enum nfs_stat_eventcounters { ____Placeholder_nfs_stat_eventcounters } nfs_stat_eventcounters ;


 int get_cpu () ;
 struct nfs_iostats* per_cpu_ptr (int ,int) ;
 int put_cpu () ;

__attribute__((used)) static inline void nfs_inc_server_stats(const struct nfs_server *server,
     enum nfs_stat_eventcounters stat)
{
 struct nfs_iostats *iostats;
 int cpu;

 cpu = get_cpu();
 iostats = per_cpu_ptr(server->io_stats, cpu);
 iostats->events[stat]++;
 put_cpu();
}
