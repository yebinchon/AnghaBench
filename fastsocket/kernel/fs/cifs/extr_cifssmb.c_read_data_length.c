
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int DataLength; int DataLengthHigh; } ;
typedef TYPE_1__ READ_RSP ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline unsigned int
read_data_length(char *buf)
{
 READ_RSP *rsp = (READ_RSP *)buf;
 return (le16_to_cpu(rsp->DataLengthHigh) << 16) +
        le16_to_cpu(rsp->DataLength);
}
