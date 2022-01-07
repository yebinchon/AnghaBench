
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MY_OBJ ;


 int SEEK_CUR ;
 long lseek_obj (int *,long,int ) ;

__attribute__((used)) static long
ftell_obj(MY_OBJ * obj)
{
    return lseek_obj(obj, 0L, SEEK_CUR);
}
