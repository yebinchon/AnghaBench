#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
struct nw_modify_dos_info {int attributes; int /*<<< orphan*/  lastAccessDate; int /*<<< orphan*/  modifyDate; int /*<<< orphan*/  modifyTime; int /*<<< orphan*/  creationDate; int /*<<< orphan*/  creationTime; } ;
struct TYPE_6__ {scalar_t__ uid; scalar_t__ gid; int dir_mode; int flags; int file_mode; } ;
struct ncp_server {TYPE_1__ m; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct TYPE_9__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_8__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_7__ {int /*<<< orphan*/  tv_sec; } ;
struct iattr {int ia_valid; scalar_t__ ia_uid; scalar_t__ ia_gid; int ia_mode; TYPE_4__ ia_atime; TYPE_3__ ia_mtime; TYPE_2__ ia_ctime; int /*<<< orphan*/  ia_size; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int __le32 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_10__ {int nwattr; int /*<<< orphan*/  file_handle; int /*<<< orphan*/  dirEntNum; int /*<<< orphan*/  volNumber; } ;

/* Variables and functions */
 int ATTR_ATIME ; 
 int ATTR_CTIME ; 
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_MTIME ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int DM_ATTRIBUTES ; 
 int DM_CREATE_DATE ; 
 int DM_CREATE_TIME ; 
 int DM_LAST_ACCESS_DATE ; 
 int DM_MODIFY_DATE ; 
 int DM_MODIFY_TIME ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int EIO ; 
 int EPERM ; 
 TYPE_5__* FUNC1 (struct inode*) ; 
 int NCP_MOUNT_EXTRAS ; 
 struct ncp_server* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 int S_IRWXUGO ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int S_IWUGO ; 
 int S_IXUGO ; 
 int aDELETEINHIBIT ; 
 int aRENAMEINHIBIT ; 
 int aRONLY ; 
 int aSHARED ; 
 int aSYSTEM ; 
 int FUNC4 (struct inode*,struct iattr*) ; 
 int FUNC5 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nw_modify_dos_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ncp_server*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct ncp_server*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 scalar_t__ FUNC12 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct inode*) ; 
 int FUNC14 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct ncp_server*,struct inode*,int,struct nw_modify_dos_info*) ; 
 int FUNC16 (struct ncp_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ncp_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC18 () ; 

int FUNC19(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = dentry->d_inode;
	int result = 0;
	__le32 info_mask;
	struct nw_modify_dos_info info;
	struct ncp_server *server;

	result = -EIO;

	FUNC6();	

	server = FUNC2(inode);
	if ((!server) || !FUNC9(server))
		goto out;

	/* ageing the dentry to force validation */
	FUNC8(server, dentry);

	result = FUNC4(inode, attr);
	if (result < 0)
		goto out;

	result = -EPERM;
	if (((attr->ia_valid & ATTR_UID) &&
	     (attr->ia_uid != server->m.uid)))
		goto out;

	if (((attr->ia_valid & ATTR_GID) &&
	     (attr->ia_gid != server->m.gid)))
		goto out;

	if (((attr->ia_valid & ATTR_MODE) &&
	     (attr->ia_mode &
	      ~(S_IFREG | S_IFDIR | S_IRWXUGO))))
		goto out;

	info_mask = 0;
	FUNC7(&info, 0, sizeof(info));

#if 1 
        if ((attr->ia_valid & ATTR_MODE) != 0)
        {
		umode_t newmode = attr->ia_mode;

		info_mask |= DM_ATTRIBUTES;

                if (FUNC3(inode->i_mode)) {
                	newmode &= server->m.dir_mode;
		} else {
#ifdef CONFIG_NCPFS_EXTRAS			
			if (server->m.flags & NCP_MOUNT_EXTRAS) {
				/* any non-default execute bit set */
				if (newmode & ~server->m.file_mode & S_IXUGO)
					info.attributes |= aSHARED | aSYSTEM;
				/* read for group/world and not in default file_mode */
				else if (newmode & ~server->m.file_mode & S_IRUGO)
					info.attributes |= aSHARED;
			} else
#endif
				newmode &= server->m.file_mode;			
                }
                if (newmode & S_IWUGO)
                	info.attributes &= ~(aRONLY|aRENAMEINHIBIT|aDELETEINHIBIT);
                else
			info.attributes |=  (aRONLY|aRENAMEINHIBIT|aDELETEINHIBIT);

#ifdef CONFIG_NCPFS_NFS_NS
		if (ncp_is_nfs_extras(server, NCP_FINFO(inode)->volNumber)) {
			result = ncp_modify_nfs_info(server,
						     NCP_FINFO(inode)->volNumber,
						     NCP_FINFO(inode)->dirEntNum,
						     attr->ia_mode, 0);
			if (result != 0)
				goto out;
			info.attributes &= ~(aSHARED | aSYSTEM);
			{
				/* mark partial success */
				struct iattr tmpattr;
				
				tmpattr.ia_valid = ATTR_MODE;
				tmpattr.ia_mode = attr->ia_mode;

				result = inode_setattr(inode, &tmpattr);
				if (result)
					goto out;
			}
		}
#endif
        }
#endif

	/* Do SIZE before attributes, otherwise mtime together with size does not work...
	 */
	if ((attr->ia_valid & ATTR_SIZE) != 0) {
		int written;

		FUNC0("ncpfs: trying to change size to %ld\n",
			attr->ia_size);

		if ((result = FUNC14(inode, O_WRONLY)) < 0) {
			result = -EACCES;
			goto out;
		}
		FUNC17(FUNC2(inode), FUNC1(inode)->file_handle,
			  attr->ia_size, 0, "", &written);

		/* According to ndir, the changes only take effect after
		   closing the file */
		FUNC11(inode);
		result = FUNC13(inode);
		if (result)
			goto out;
		{
			struct iattr tmpattr;
			
			tmpattr.ia_valid = ATTR_SIZE;
			tmpattr.ia_size = attr->ia_size;
			
			result = FUNC5(inode, &tmpattr);
			if (result)
				goto out;
		}
	}
	if ((attr->ia_valid & ATTR_CTIME) != 0) {
		info_mask |= (DM_CREATE_TIME | DM_CREATE_DATE);
		FUNC10(attr->ia_ctime.tv_sec,
			     &info.creationTime, &info.creationDate);
	}
	if ((attr->ia_valid & ATTR_MTIME) != 0) {
		info_mask |= (DM_MODIFY_TIME | DM_MODIFY_DATE);
		FUNC10(attr->ia_mtime.tv_sec,
				  &info.modifyTime, &info.modifyDate);
	}
	if ((attr->ia_valid & ATTR_ATIME) != 0) {
		__le16 dummy;
		info_mask |= (DM_LAST_ACCESS_DATE);
		FUNC10(attr->ia_atime.tv_sec,
				  &dummy, &info.lastAccessDate);
	}
	if (info_mask != 0) {
		result = FUNC15(FUNC2(inode),
				      inode, info_mask, &info);
		if (result != 0) {
			result = -EACCES;

			if (info_mask == (DM_CREATE_TIME | DM_CREATE_DATE)) {
				/* NetWare seems not to allow this. I
				   do not know why. So, just tell the
				   user everything went fine. This is
				   a terrible hack, but I do not know
				   how to do this correctly. */
				result = 0;
			} else
				goto out;
		}
#ifdef CONFIG_NCPFS_STRONG		
		if ((!result) && (info_mask & DM_ATTRIBUTES))
			NCP_FINFO(inode)->nwattr = info.attributes;
#endif
	}
	if (!result)
		result = FUNC5(inode, attr);
out:
	FUNC18();
	return result;
}