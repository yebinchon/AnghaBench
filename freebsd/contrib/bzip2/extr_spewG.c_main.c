
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEGABYTES ;
 int N_BUF ;
 int buf ;
 int fflush (int ) ;
 int printf (char*) ;
 int random () ;
 int setbuffer (int ,int ,int ) ;
 int srandom (int) ;
 int stdout ;

int main ( int argc, char** argv )
{
   int ii, kk, p;
   srandom(1);
   setbuffer ( stdout, buf, N_BUF );
   for (kk = 0; kk < MEGABYTES * 515; kk+=3) {
      p = 25+random()%50;
      for (ii = 0; ii < p; ii++)
         printf ( "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" );
      for (ii = 0; ii < p-1; ii++)
         printf ( "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb" );
      for (ii = 0; ii < p+1; ii++)
         printf ( "ccccccccccccccccccccccccccccccccccccc" );
   }
   fflush(stdout);
   return 0;
}
