
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int CONTROL_SHIFT ;
 int sddr09_writeX (struct us_data*,unsigned long,unsigned long,int,int,unsigned char*,int) ;

__attribute__((used)) static int
sddr09_write_inplace(struct us_data *us, unsigned long address,
       int nr_of_pages, int pageshift, unsigned char *buf,
       int use_sg) {
 int bulklen = (nr_of_pages << pageshift) + (nr_of_pages << CONTROL_SHIFT);
 return sddr09_writeX(us, address, address, nr_of_pages, bulklen,
        buf, use_sg);
}
