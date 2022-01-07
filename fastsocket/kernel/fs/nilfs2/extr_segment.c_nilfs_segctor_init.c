
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sc_info {int sc_seq_request; int sc_seq_done; } ;


 int nilfs_segctor_start_thread (struct nilfs_sc_info*) ;

__attribute__((used)) static int nilfs_segctor_init(struct nilfs_sc_info *sci)
{
 sci->sc_seq_done = sci->sc_seq_request;

 return nilfs_segctor_start_thread(sci);
}
