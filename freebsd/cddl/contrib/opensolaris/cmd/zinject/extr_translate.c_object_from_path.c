
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zi_object; int zi_objset; } ;
typedef TYPE_1__ zinject_record_t ;
struct stat64 {int st_ino; } ;
typedef int objset_t ;


 int B_TRUE ;
 int DMU_OST_ZFS ;
 int FTAG ;
 int dmu_objset_disown (int *,int ) ;
 int dmu_objset_id (int *) ;
 int dmu_objset_own (char const*,int ,int ,int ,int **) ;
 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;
 char* strerror (int) ;
 int sync () ;

__attribute__((used)) static int
object_from_path(const char *dataset, const char *path, struct stat64 *statbuf,
    zinject_record_t *record)
{
 objset_t *os;
 int err;





 sync();

 err = dmu_objset_own(dataset, DMU_OST_ZFS, B_TRUE, FTAG, &os);
 if (err != 0) {
  (void) fprintf(stderr, "cannot open dataset '%s': %s\n",
      dataset, strerror(err));
  return (-1);
 }

 record->zi_objset = dmu_objset_id(os);
 record->zi_object = statbuf->st_ino;

 dmu_objset_disown(os, FTAG);

 return (0);
}
