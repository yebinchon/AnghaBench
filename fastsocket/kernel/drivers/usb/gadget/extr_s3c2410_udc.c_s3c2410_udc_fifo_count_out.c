
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_UDC_OUT_FIFO_CNT1_REG ;
 int S3C2410_UDC_OUT_FIFO_CNT2_REG ;
 int udc_read (int ) ;

__attribute__((used)) static inline int s3c2410_udc_fifo_count_out(void)
{
 int tmp;

 tmp = udc_read(S3C2410_UDC_OUT_FIFO_CNT2_REG) << 8;
 tmp |= udc_read(S3C2410_UDC_OUT_FIFO_CNT1_REG);
 return tmp;
}
