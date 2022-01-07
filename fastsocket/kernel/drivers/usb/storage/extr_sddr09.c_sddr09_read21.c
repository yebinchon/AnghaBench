
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int sddr09_readX (struct us_data*,int,unsigned long,int,int,unsigned char*,int) ;

__attribute__((used)) static int
sddr09_read21(struct us_data *us, unsigned long fromaddress,
       int count, int controlshift, unsigned char *buf, int use_sg) {

 int bulklen = (count << controlshift);
 return sddr09_readX(us, 1, fromaddress, count, bulklen,
       buf, use_sg);
}
