
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MY_OBJ ;


 int SEEK_SET ;
 int dlg_exiterr (char*,long,long) ;
 long lseek_obj (int *,long,int ) ;

__attribute__((used)) static void
lseek_set(MY_OBJ * obj, long offset)
{
    long actual = lseek_obj(obj, offset, SEEK_SET);

    if (actual != offset) {
 dlg_exiterr("Cannot set file position to %ld (actual %ld)\n",
      offset, actual);
    }
}
