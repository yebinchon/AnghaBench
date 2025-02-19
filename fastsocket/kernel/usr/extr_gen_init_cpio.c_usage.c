
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void usage(const char *prog)
{
 fprintf(stderr, "Usage:\n"
  "\t%s <cpio_list>\n"
  "\n"
  "<cpio_list> is a file containing newline separated entries that\n"
  "describe the files to be included in the initramfs archive:\n"
  "\n"
  "# a comment\n"
  "file <name> <location> <mode> <uid> <gid> [<hard links>]\n"
  "dir <name> <mode> <uid> <gid>\n"
  "nod <name> <mode> <uid> <gid> <dev_type> <maj> <min>\n"
  "slink <name> <target> <mode> <uid> <gid>\n"
  "pipe <name> <mode> <uid> <gid>\n"
  "sock <name> <mode> <uid> <gid>\n"
  "\n"
  "<name>       name of the file/dir/nod/etc in the archive\n"
  "<location>   location of the file in the current filesystem\n"
  "             expands shell variables quoted with ${}\n"
  "<target>     link target\n"
  "<mode>       mode/permissions of the file\n"
  "<uid>        user id (0=root)\n"
  "<gid>        group id (0=root)\n"
  "<dev_type>   device type (b=block, c=character)\n"
  "<maj>        major number of nod\n"
  "<min>        minor number of nod\n"
  "<hard links> space separated list of other links to file\n"
  "\n"
  "example:\n"
  "# A simple initramfs\n"
  "dir /dev 0755 0 0\n"
  "nod /dev/console 0600 0 0 c 5 1\n"
  "dir /root 0700 0 0\n"
  "dir /sbin 0755 0 0\n"
  "file /sbin/kinit /usr/src/klibc/kinit/kinit 0755 0 0\n",
  prog);
}
