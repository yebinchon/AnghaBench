
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int instr ;


 scalar_t__ baz ;
 int bcopy (int*,int*,int) ;
 int free (int*) ;
 int* malloc (int) ;
 int stub1 () ;

__attribute__((used)) static int
foo(void)
{




 uint8_t instr[] = {
     0x55,
     0x8b, 0xec,
     0xe8, 0x0, 0x0, 0x0, 0x0,
     0x8b, 0xe5,
     0x5d,
     0xc3
 };
 uint8_t *fp = malloc(sizeof (instr));




 *((int *)&instr[4]) = (uintptr_t)baz - (uintptr_t)&fp[8];





 bcopy(instr, fp, sizeof (instr));

 (*(int (*)(void))fp)();

 free(fp);

 return (0);
}
