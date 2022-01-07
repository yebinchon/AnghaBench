
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int complete; } ;


 int CUDA_GET_SET_IIC ;
 int CUDA_PACKET ;
 int cuda_poll () ;
 int cuda_request (struct adb_request*,int *,int,int ,int ,int,int,unsigned char) ;

__attribute__((used)) static void set_valkyrie_clock(unsigned char *params)
{
 struct adb_request req;
 int i;
}
