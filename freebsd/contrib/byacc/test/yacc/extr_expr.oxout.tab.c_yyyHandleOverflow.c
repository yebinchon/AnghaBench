
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char,...) ;
 int fputs (char*,int ) ;
 int stderr ;
 long yyyRSmaxSize ;


 long yyySSALspaceSize ;

 long yyyTravStackMaxSize ;

void yyyHandleOverflow(char which)
  {char *msg1,*msg2;
   long oldSize,newSize;
   switch(which)
     {
      case 129 :
           msg1 = "SSAL overflow: ";
           oldSize = yyySSALspaceSize;
           break;
      case 130 :
           msg1 = "ready set overflow: ";
           oldSize = yyyRSmaxSize;
           break;
      case 128 :
           msg1 = "traversal stack overflow: ";
           oldSize = yyyTravStackMaxSize;
           break;
      default :;
     }
   newSize = (3*oldSize)/2;
   if (newSize < 100) newSize = 100;
   fputs(msg1,stderr);
   fprintf(stderr,"size was %ld.\n",oldSize);
   msg2 = "     Have to modify evaluator:  -Y%c%ld.\n";
   fprintf(stderr,msg2,which,newSize);
   exit(-1);
  }
