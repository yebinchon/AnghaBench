
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateowner {int so_time; int so_close_lru; } ;


 int close_lru ;
 int dprintk (char*,struct nfs4_stateowner*) ;
 int get_seconds () ;
 int list_move_tail (int *,int *) ;

__attribute__((used)) static void
move_to_close_lru(struct nfs4_stateowner *sop)
{
 dprintk("NFSD: move_to_close_lru nfs4_stateowner %p\n", sop);

 list_move_tail(&sop->so_close_lru, &close_lru);
 sop->so_time = get_seconds();
}
