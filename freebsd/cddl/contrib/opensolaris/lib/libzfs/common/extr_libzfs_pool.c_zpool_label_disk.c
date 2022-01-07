
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ zpool_start_block; int zpool_config; } ;
typedef TYPE_2__ zpool_handle_t ;
typedef scalar_t__ zpool_boot_label_t ;
typedef int uint64_t ;
struct dk_gpt {int efi_lbasize; int efi_last_u_lba; TYPE_1__* efi_parts; } ;
typedef int path ;
typedef int nvlist_t ;
struct TYPE_11__ {scalar_t__ libzfs_printerr; } ;
typedef TYPE_3__ libzfs_handle_t ;
typedef int errbuf ;
typedef scalar_t__ diskaddr_t ;
typedef int buf ;
struct TYPE_9__ {int p_size; void* p_tag; scalar_t__ p_start; int p_name; } ;


 int BACKUP_SLICE ;
 int EFI_MIN_RESV_SIZE ;
 int EFI_NUMPAR ;
 scalar_t__ ENOMEM ;
 int EZFS_LABELFAILED ;
 int EZFS_NOCAP ;
 int EZFS_OPENFAILED ;
 scalar_t__ MAXOFFSET_T ;
 int MAXPATHLEN ;
 scalar_t__ NEW_START_BLOCK ;
 int O_NDELAY ;
 int O_RDWR ;
 int TEXT_DOMAIN ;
 void* V_RESERVED ;
 void* V_SYSTEM ;
 void* V_USR ;
 char* ZFS_RDISK_ROOT ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ ZPOOL_CREATE_BOOT_LABEL ;
 int close (int) ;
 char* dgettext (int ,char*) ;
 scalar_t__ efi_alloc_and_init (int,int ,struct dk_gpt**) ;
 int efi_free (struct dk_gpt*) ;
 scalar_t__ efi_write (int,struct dk_gpt*) ;
 scalar_t__ errno ;
 scalar_t__ find_start_block (int *) ;
 int fprintf (int ,char*,char*) ;
 int no_memory (TYPE_3__*) ;
 scalar_t__ nvlist_lookup_nvlist (int ,int ,int **) ;
 int open (char*,int) ;
 int snprintf (char*,int,char*,char const*,...) ;
 int stderr ;
 int strcpy (int ,char*) ;
 int verify (int) ;
 int zfs_error (TYPE_3__*,int ,char*) ;
 int zfs_error_aux (TYPE_3__*,char*,...) ;
 int zfs_nicenum (int,char*,int) ;

int
zpool_label_disk(libzfs_handle_t *hdl, zpool_handle_t *zhp, const char *name,
    zpool_boot_label_t boot_type, uint64_t boot_size, int *slice)
{
 return (0);
}
