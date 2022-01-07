
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int dummy; } ;
struct timeval {int dummy; } ;
typedef int r ;
typedef int pid_t ;
typedef struct timeval apr_uint64_t ;
typedef int apr_md5_ctx_t ;


 int APR_MD5_DIGESTSIZE ;
 int NODE_LENGTH ;
 int NXGetTime (int ,int ,struct timeval*) ;
 int NXThreadGetId () ;
 int NX_SINCE_BOOT ;
 int NX_USECONDS ;
 int apr_generate_random_bytes (unsigned char*,int ) ;
 int apr_md5_final (unsigned char*,int *) ;
 int apr_md5_init (int *) ;
 int apr_md5_update (int *,unsigned char const*,int) ;
 int gethostname (char*,int) ;
 int getpid () ;
 int gettimeofday (struct timeval*,struct timezone*) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;

__attribute__((used)) static void get_random_info(unsigned char node[NODE_LENGTH])
{






    unsigned char seed[APR_MD5_DIGESTSIZE];
    apr_md5_ctx_t c;





    struct {

        pid_t pid;



        struct timeval t;

        char hostname[257];

    } r;

    apr_md5_init(&c);




    r.pid = getpid();
    gettimeofday(&r.t, (struct timezone *)0);

    gethostname(r.hostname, 256);
    apr_md5_update(&c, (const unsigned char *)&r, sizeof(r));
    apr_md5_final(seed, &c);

    memcpy(node, seed, NODE_LENGTH);

}
