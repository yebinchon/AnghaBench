
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int entropy ;
typedef int XML_Parser ;


 unsigned long ENTROPY_DEBUG (char*,unsigned long) ;
 int arc4random_buf (unsigned long*,int) ;
 unsigned long gather_time_entropy () ;
 unsigned long getpid () ;
 scalar_t__ writeRandomBytes_RtlGenRandom (void*,int) ;
 int writeRandomBytes_arc4random (void*,int) ;
 scalar_t__ writeRandomBytes_dev_urandom (void*,int) ;
 scalar_t__ writeRandomBytes_getrandom_nonblock (void*,int) ;

__attribute__((used)) static unsigned long
generate_hash_secret_salt(XML_Parser parser)
{
  unsigned long entropy;
  (void)parser;
  entropy = gather_time_entropy() ^ getpid();


  if (sizeof(unsigned long) == 4) {
    return ENTROPY_DEBUG("fallback(4)", entropy * 2147483647);
  } else {
    return ENTROPY_DEBUG("fallback(8)",
        entropy * (unsigned long)2305843009213693951ULL);
  }

}
