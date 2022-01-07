
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minstrel_priv {int dbg_fixed_rate; } ;


 int debugfs_remove (int ) ;
 int kfree (void*) ;

__attribute__((used)) static void
minstrel_free(void *priv)
{



 kfree(priv);
}
