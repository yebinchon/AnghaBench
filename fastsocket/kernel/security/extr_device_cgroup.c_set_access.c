
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACCLEN ;
 short ACC_MKNOD ;
 short ACC_READ ;
 short ACC_WRITE ;
 int memset (char*,int ,int ) ;

__attribute__((used)) static void set_access(char *acc, short access)
{
 int idx = 0;
 memset(acc, 0, ACCLEN);
 if (access & ACC_READ)
  acc[idx++] = 'r';
 if (access & ACC_WRITE)
  acc[idx++] = 'w';
 if (access & ACC_MKNOD)
  acc[idx++] = 'm';
}
