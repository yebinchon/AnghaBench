
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int instr ;


 scalar_t__ baz ;
 int bcopy (int*,int*,int) ;
 int free (int*) ;
 int* malloc (int) ;
 int stub1 () ;

__attribute__((used)) static int
foo(void)
{




 uint32_t instr[] = {
     0x9de3bfa0,
     0x40000000,
     0x01000000,
     0x81c7e008,
     0x81e80000
 };
 uint32_t *fp = malloc(sizeof (instr));




 instr[1] |= ((uintptr_t)baz - (uintptr_t)&fp[1]) >> 2;





 bcopy(instr, fp, sizeof (instr));

 (*(int (*)(void))fp)();

 free(fp);

 return (0);
}
