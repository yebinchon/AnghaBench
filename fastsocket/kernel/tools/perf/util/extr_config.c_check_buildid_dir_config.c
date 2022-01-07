
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buildid_dir_config {int dir; } ;


 int buildid_dir ;
 int buildid_dir_command_config ;
 int perf_config (int ,struct buildid_dir_config*) ;

__attribute__((used)) static void check_buildid_dir_config(void)
{
 struct buildid_dir_config c;
 c.dir = buildid_dir;
 perf_config(buildid_dir_command_config, &c);
}
