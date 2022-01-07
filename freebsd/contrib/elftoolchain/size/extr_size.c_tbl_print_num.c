
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef enum radix_style { ____Placeholder_radix_style } radix_style ;


 int BUF_SIZE ;
 int RADIX_DECIMAL ;
 int RADIX_OCTAL ;
 int snprintf (char*,int,char*,int ) ;
 int tbl_print (char*,int) ;

__attribute__((used)) static void
tbl_print_num(uint64_t num, enum radix_style rad, int col)
{
 char buf[BUF_SIZE];

 (void) snprintf(buf, BUF_SIZE, (rad == RADIX_DECIMAL ? "%ju" :
     ((rad == RADIX_OCTAL) ? "0%jo" : "0x%jx")), (uintmax_t) num);
 tbl_print(buf, col);
}
