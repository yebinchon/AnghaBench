
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DLG_TRACE (char*) ;
 size_t MY_LEN ;
 int dlg_trim_string (char*) ;
 scalar_t__ feof (int *) ;
 scalar_t__ fgets (char*,size_t,int *) ;

__attribute__((used)) static int
read_data(char *buffer, FILE *fp)
{
    int result;

    if (feof(fp)) {
 result = 0;
    } else if (fgets(buffer, MY_LEN, fp) != 0) {
 DLG_TRACE(("read_data:%s", buffer));
 buffer[MY_LEN] = '\0';
 dlg_trim_string(buffer);
 result = 1;
    } else {
 result = -1;
    }
    return result;
}
