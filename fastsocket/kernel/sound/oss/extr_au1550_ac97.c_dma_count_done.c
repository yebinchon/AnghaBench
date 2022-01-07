
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmabuf {int dma_fragsize; int dmanr; scalar_t__ stopped; } ;


 int au1xxx_get_dma_residue (int ) ;

__attribute__((used)) static int
dma_count_done(struct dmabuf *db)
{
 if (db->stopped)
  return 0;

 return db->dma_fragsize - au1xxx_get_dma_residue(db->dmanr);
}
