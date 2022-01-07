
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int sddr09_readX (struct us_data*,int ,unsigned long,int,int,unsigned char*,int) ;

__attribute__((used)) static int
sddr09_read20(struct us_data *us, unsigned long fromaddress,
       int nr_of_pages, int pageshift, unsigned char *buf, int use_sg) {
 int bulklen = nr_of_pages << pageshift;


 return sddr09_readX(us, 0, fromaddress, nr_of_pages, bulklen,
       buf, use_sg);
}
