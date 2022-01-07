
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MY_OBJ ;


 int DLG_TRACE (char*) ;
 int SEEK_CUR ;
 long lseek_obj (int *,long,int ) ;

__attribute__((used)) static void
lseek_cur(MY_OBJ * obj, long offset)
{
    long actual = lseek_obj(obj, offset, SEEK_CUR);

    if (actual != offset) {
 DLG_TRACE(("# Lseek returned %ld, expected %ld\n", actual, offset));
    }
}
