
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int spa_name; } ;
typedef TYPE_1__ spa_t ;
typedef int nvlist_t ;


 int ASSERT (int) ;
 int FTAG ;
 int fatal (char*,char*,int) ;
 int free (char*) ;
 char* import_checkpointed_state (int ,int *,int *) ;
 int spa_close (TYPE_1__*,int ) ;
 int spa_open (char*,TYPE_1__**,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int verify_checkpoint_ms_spacemaps (TYPE_1__*,TYPE_1__*) ;
 int verify_checkpoint_vdev_spacemaps (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void
verify_checkpoint_blocks(spa_t *spa)
{
 spa_t *checkpoint_spa;
 char *checkpoint_pool;
 nvlist_t *config = ((void*)0);
 int error = 0;






 checkpoint_pool = import_checkpointed_state(spa->spa_name, config,
     ((void*)0));
 ASSERT(strcmp(spa->spa_name, checkpoint_pool) != 0);

 error = spa_open(checkpoint_pool, &checkpoint_spa, FTAG);
 if (error != 0) {
  fatal("Tried to open pool \"%s\" but spa_open() failed with "
      "error %d\n", checkpoint_pool, error);
 }






 verify_checkpoint_vdev_spacemaps(checkpoint_spa, spa);






 verify_checkpoint_ms_spacemaps(checkpoint_spa, spa);




 spa_close(checkpoint_spa, FTAG);
 free(checkpoint_pool);
}
