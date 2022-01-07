
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEPRECATED_REGISTER_BYTE (int) ;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int MAX_REGISTER_SIZE ;
 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 int deprecated_read_register_gen (int,char*) ;
 int * deprecated_registers ;
 int deprecated_write_register_gen (int,char*) ;
 int max (int,int) ;
 int memcpy (int *,char*,int) ;
 int min (int,int) ;
 int target_prepare_to_store () ;
 int target_store_registers (int) ;

void
deprecated_write_register_bytes (int myregstart, char *myaddr, int inlen)
{
  int myregend = myregstart + inlen;
  int regnum;

  target_prepare_to_store ();






  for (regnum = 0; regnum < NUM_REGS + NUM_PSEUDO_REGS; regnum++)
    {
      int regstart, regend;

      regstart = DEPRECATED_REGISTER_BYTE (regnum);
      regend = regstart + DEPRECATED_REGISTER_RAW_SIZE (regnum);


      if (myregend <= regstart || regend <= myregstart)
                  ;


      else if (myregstart <= regstart && regend <= myregend)
 deprecated_write_register_gen (regnum, myaddr + (regstart - myregstart));


      else
 {
   char regbuf[MAX_REGISTER_SIZE];


   int overlapstart = max (regstart, myregstart);
   int overlapend = min (regend, myregend);



   deprecated_read_register_gen (regnum, regbuf);

   memcpy (&deprecated_registers[overlapstart],
    myaddr + (overlapstart - myregstart),
    overlapend - overlapstart);

   target_store_registers (regnum);
 }
    }
}
