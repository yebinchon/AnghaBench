; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_fhget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_fhget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_12__*, i64, i64, i64, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_15__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32*, i32* }
%struct.super_block = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32, i32, i32, %struct.TYPE_11__, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.nfs_find_desc = type { %struct.nfs_fattr*, %struct.nfs_fh* }
%struct.nfs_inode = type { i32, i64, i32, i32, i64, i32, i32, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32*, i32*, i32* }

@ENOENT = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_FILEID = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_TYPE = common dso_local global i32 0, align 4
@nfs_find_actor = common dso_local global i32 0, align 4
@nfs_init_locked = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@S_NOATIME = common dso_local global i32 0, align 4
@S_NOCMTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MODE = common dso_local global i32 0, align 4
@NFS_CAP_MODE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ATTR = common dso_local global i32 0, align 4
@nfs_file_aops = common dso_local global i32 0, align 4
@nfs_dir_operations = common dso_local global i32 0, align 4
@nfs_dir_aops = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MOUNTPOINT = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_V4_REFERRAL = common dso_local global i32 0, align 4
@nfs_referral_inode_operations = common dso_local global i32 0, align 4
@nfs_mountpoint_inode_operations = common dso_local global i32 0, align 4
@S_AUTOMOUNT = common dso_local global i32 0, align 4
@nfs_symlink_inode_operations = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_ATIME = common dso_local global i32 0, align 4
@NFS_CAP_ATIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MTIME = common dso_local global i32 0, align 4
@NFS_CAP_MTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_CTIME = common dso_local global i32 0, align 4
@NFS_CAP_CTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_CHANGE = common dso_local global i32 0, align 4
@NFS_CAP_CHANGE_ATTR = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_SIZE = common dso_local global i32 0, align 4
@NFS_INO_REVAL_PAGECACHE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_NLINK = common dso_local global i32 0, align 4
@NFS_CAP_NLINK = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_OWNER = common dso_local global i32 0, align 4
@NFS_CAP_OWNER = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_GROUP = common dso_local global i32 0, align 4
@NFS_CAP_OWNER_GROUP = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_BLOCKS_USED = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_SPACE_USED = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"NFS: nfs_fhget(%s/%Ld fh_crc=0x%08x ct=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"nfs_fhget: iget failed with error %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @nfs_fhget(%struct.super_block* %0, %struct.nfs_fh* %1, %struct.nfs_fattr* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca %struct.nfs_fattr*, align 8
  %7 = alloca %struct.nfs_find_desc, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nfs_inode*, align 8
  %11 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %6, align 8
  %12 = getelementptr inbounds %struct.nfs_find_desc, %struct.nfs_find_desc* %7, i32 0, i32 0
  %13 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  store %struct.nfs_fattr* %13, %struct.nfs_fattr** %12, align 8
  %14 = getelementptr inbounds %struct.nfs_find_desc, %struct.nfs_find_desc* %7, i32 0, i32 1
  %15 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fh* %15, %struct.nfs_fh** %14, align 8
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.inode* @ERR_PTR(i32 %17)
  store %struct.inode* %18, %struct.inode** %8, align 8
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %21 = call i32 @nfs_attr_check_mountpoint(%struct.super_block* %19, %struct.nfs_fattr* %20)
  %22 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %23 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NFS_ATTR_FATTR_FILEID, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %30 = call i32 @nfs_attr_use_mounted_on_fileid(%struct.nfs_fattr* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %509

33:                                               ; preds = %28, %3
  %34 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %35 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @NFS_ATTR_FATTR_TYPE, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %509

41:                                               ; preds = %33
  %42 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %43 = call i64 @nfs_fattr_to_ino_t(%struct.nfs_fattr* %42)
  store i64 %43, i64* %9, align 8
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* @nfs_find_actor, align 4
  %47 = load i32, i32* @nfs_init_locked, align 4
  %48 = call %struct.inode* @iget5_locked(%struct.super_block* %44, i64 %45, i32 %46, i32 %47, %struct.nfs_find_desc* %7)
  store %struct.inode* %48, %struct.inode** %8, align 8
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = icmp eq %struct.inode* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.inode* @ERR_PTR(i32 %53)
  store %struct.inode* %54, %struct.inode** %8, align 8
  br label %509

55:                                               ; preds = %41
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @I_NEW, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %489

62:                                               ; preds = %55
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = call %struct.nfs_inode* @NFS_I(%struct.inode* %63)
  store %struct.nfs_inode* %64, %struct.nfs_inode** %10, align 8
  %65 = load i64, i64* @jiffies, align 8
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.inode*, %struct.inode** %8, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* @S_NOATIME, align 4
  %70 = load i32, i32* @S_NOCMTIME, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %77 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %76, i32 0, i32 13
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 13
  store i32 %78, i32* %80, align 4
  %81 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %82 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @NFS_ATTR_FATTR_MODE, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %62
  %88 = load %struct.inode*, %struct.inode** %8, align 8
  %89 = load i32, i32* @NFS_CAP_MODE, align 4
  %90 = call i64 @nfs_server_capable(%struct.inode* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %94 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %95 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %87, %62
  %99 = load %struct.super_block*, %struct.super_block** %4, align 8
  %100 = call %struct.TYPE_16__* @NFS_SB(%struct.super_block* %99)
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.inode*, %struct.inode** %8, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 14
  store i32* %106, i32** %108, align 8
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 13
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @S_ISREG(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %98
  %115 = load %struct.super_block*, %struct.super_block** %4, align 8
  %116 = call %struct.TYPE_16__* @NFS_SB(%struct.super_block* %115)
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.inode*, %struct.inode** %8, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 15
  store i32* %122, i32** %124, align 8
  %125 = load %struct.inode*, %struct.inode** %8, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 16
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  store i32* @nfs_file_aops, i32** %127, align 8
  %128 = load %struct.super_block*, %struct.super_block** %4, align 8
  %129 = call %struct.TYPE_16__* @NFS_SB(%struct.super_block* %128)
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load %struct.inode*, %struct.inode** %8, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 16
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  store i32* %130, i32** %133, align 8
  br label %211

134:                                              ; preds = %98
  %135 = load %struct.inode*, %struct.inode** %8, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 13
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @S_ISDIR(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %191

140:                                              ; preds = %134
  %141 = load %struct.super_block*, %struct.super_block** %4, align 8
  %142 = call %struct.TYPE_16__* @NFS_SB(%struct.super_block* %141)
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.inode*, %struct.inode** %8, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 14
  store i32* %148, i32** %150, align 8
  %151 = load %struct.inode*, %struct.inode** %8, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 15
  store i32* @nfs_dir_operations, i32** %152, align 8
  %153 = load %struct.inode*, %struct.inode** %8, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 16
  %155 = call i32 @set_ext_aops(%struct.TYPE_15__* %154, i32* @nfs_dir_aops)
  %156 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %157 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @NFS_ATTR_FATTR_MOUNTPOINT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %140
  %163 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %164 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @NFS_ATTR_FATTR_V4_REFERRAL, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %190

169:                                              ; preds = %162, %140
  %170 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %171 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @NFS_ATTR_FATTR_V4_REFERRAL, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load %struct.inode*, %struct.inode** %8, align 8
  %178 = getelementptr inbounds %struct.inode, %struct.inode* %177, i32 0, i32 14
  store i32* @nfs_referral_inode_operations, i32** %178, align 8
  br label %182

179:                                              ; preds = %169
  %180 = load %struct.inode*, %struct.inode** %8, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 14
  store i32* @nfs_mountpoint_inode_operations, i32** %181, align 8
  br label %182

182:                                              ; preds = %179, %176
  %183 = load %struct.inode*, %struct.inode** %8, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 15
  store i32* null, i32** %184, align 8
  %185 = load i32, i32* @S_AUTOMOUNT, align 4
  %186 = load %struct.inode*, %struct.inode** %8, align 8
  %187 = getelementptr inbounds %struct.inode, %struct.inode* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %182, %162
  br label %210

191:                                              ; preds = %134
  %192 = load %struct.inode*, %struct.inode** %8, align 8
  %193 = getelementptr inbounds %struct.inode, %struct.inode* %192, i32 0, i32 13
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @S_ISLNK(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load %struct.inode*, %struct.inode** %8, align 8
  %199 = getelementptr inbounds %struct.inode, %struct.inode* %198, i32 0, i32 14
  store i32* @nfs_symlink_inode_operations, i32** %199, align 8
  br label %209

200:                                              ; preds = %191
  %201 = load %struct.inode*, %struct.inode** %8, align 8
  %202 = load %struct.inode*, %struct.inode** %8, align 8
  %203 = getelementptr inbounds %struct.inode, %struct.inode* %202, i32 0, i32 13
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %206 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %205, i32 0, i32 12
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @init_special_inode(%struct.inode* %201, i32 %204, i32 %207)
  br label %209

209:                                              ; preds = %200, %197
  br label %210

210:                                              ; preds = %209, %190
  br label %211

211:                                              ; preds = %210, %114
  %212 = load %struct.inode*, %struct.inode** %8, align 8
  %213 = getelementptr inbounds %struct.inode, %struct.inode* %212, i32 0, i32 12
  %214 = call i32 @memset(i32* %213, i32 0, i32 4)
  %215 = load %struct.inode*, %struct.inode** %8, align 8
  %216 = getelementptr inbounds %struct.inode, %struct.inode* %215, i32 0, i32 11
  %217 = call i32 @memset(i32* %216, i32 0, i32 4)
  %218 = load %struct.inode*, %struct.inode** %8, align 8
  %219 = getelementptr inbounds %struct.inode, %struct.inode* %218, i32 0, i32 10
  %220 = call i32 @memset(i32* %219, i32 0, i32 4)
  %221 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %222 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %221, i32 0, i32 4
  store i64 0, i64* %222, align 8
  %223 = load %struct.inode*, %struct.inode** %8, align 8
  %224 = getelementptr inbounds %struct.inode, %struct.inode* %223, i32 0, i32 9
  store i64 0, i64* %224, align 8
  %225 = load %struct.inode*, %struct.inode** %8, align 8
  %226 = getelementptr inbounds %struct.inode, %struct.inode* %225, i32 0, i32 8
  store i64 0, i64* %226, align 8
  %227 = load %struct.inode*, %struct.inode** %8, align 8
  %228 = getelementptr inbounds %struct.inode, %struct.inode* %227, i32 0, i32 3
  store i32 -2, i32* %228, align 4
  %229 = load %struct.inode*, %struct.inode** %8, align 8
  %230 = getelementptr inbounds %struct.inode, %struct.inode* %229, i32 0, i32 4
  store i32 -2, i32* %230, align 8
  %231 = load %struct.inode*, %struct.inode** %8, align 8
  %232 = getelementptr inbounds %struct.inode, %struct.inode* %231, i32 0, i32 7
  store i64 0, i64* %232, align 8
  %233 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %234 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %233, i32 0, i32 7
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @memset(i32* %235, i32 0, i32 8)
  %237 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %238 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %237, i32 0, i32 11
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %241 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %240, i32 0, i32 6
  store i32 %239, i32* %241, align 4
  %242 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %243 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %242, i32 0, i32 10
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %246 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %245, i32 0, i32 5
  store i32 %244, i32* %246, align 8
  %247 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %248 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @NFS_ATTR_FATTR_ATIME, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %211
  %254 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %255 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %254, i32 0, i32 9
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.inode*, %struct.inode** %8, align 8
  %258 = getelementptr inbounds %struct.inode, %struct.inode* %257, i32 0, i32 12
  store i32 %256, i32* %258, align 8
  br label %271

259:                                              ; preds = %211
  %260 = load %struct.inode*, %struct.inode** %8, align 8
  %261 = load i32, i32* @NFS_CAP_ATIME, align 4
  %262 = call i64 @nfs_server_capable(%struct.inode* %260, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %259
  %265 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %266 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %267 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %264, %259
  br label %271

271:                                              ; preds = %270, %253
  %272 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %273 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @NFS_ATTR_FATTR_MTIME, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %271
  %279 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %280 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %279, i32 0, i32 8
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.inode*, %struct.inode** %8, align 8
  %283 = getelementptr inbounds %struct.inode, %struct.inode* %282, i32 0, i32 11
  store i32 %281, i32* %283, align 4
  br label %296

284:                                              ; preds = %271
  %285 = load %struct.inode*, %struct.inode** %8, align 8
  %286 = load i32, i32* @NFS_CAP_MTIME, align 4
  %287 = call i64 @nfs_server_capable(%struct.inode* %285, i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %284
  %290 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %291 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %292 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 8
  br label %295

295:                                              ; preds = %289, %284
  br label %296

296:                                              ; preds = %295, %278
  %297 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %298 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @NFS_ATTR_FATTR_CTIME, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %296
  %304 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %305 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %304, i32 0, i32 7
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.inode*, %struct.inode** %8, align 8
  %308 = getelementptr inbounds %struct.inode, %struct.inode* %307, i32 0, i32 10
  store i32 %306, i32* %308, align 8
  br label %321

309:                                              ; preds = %296
  %310 = load %struct.inode*, %struct.inode** %8, align 8
  %311 = load i32, i32* @NFS_CAP_CTIME, align 4
  %312 = call i64 @nfs_server_capable(%struct.inode* %310, i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %309
  %315 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %316 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %317 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = or i32 %318, %315
  store i32 %319, i32* %317, align 8
  br label %320

320:                                              ; preds = %314, %309
  br label %321

321:                                              ; preds = %320, %303
  %322 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %323 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @NFS_ATTR_FATTR_CHANGE, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %321
  %329 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %330 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %329, i32 0, i32 6
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %333 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %332, i32 0, i32 4
  store i64 %331, i64* %333, align 8
  br label %346

334:                                              ; preds = %321
  %335 = load %struct.inode*, %struct.inode** %8, align 8
  %336 = load i32, i32* @NFS_CAP_CHANGE_ATTR, align 4
  %337 = call i64 @nfs_server_capable(%struct.inode* %335, i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %345

339:                                              ; preds = %334
  %340 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %341 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %342 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 8
  br label %345

345:                                              ; preds = %339, %334
  br label %346

346:                                              ; preds = %345, %328
  %347 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %348 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @NFS_ATTR_FATTR_SIZE, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %346
  %354 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %355 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %354, i32 0, i32 5
  %356 = load i32, i32* %355, align 8
  %357 = call i64 @nfs_size_to_loff_t(i32 %356)
  %358 = load %struct.inode*, %struct.inode** %8, align 8
  %359 = getelementptr inbounds %struct.inode, %struct.inode* %358, i32 0, i32 9
  store i64 %357, i64* %359, align 8
  br label %368

360:                                              ; preds = %346
  %361 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %362 = load i32, i32* @NFS_INO_REVAL_PAGECACHE, align 4
  %363 = or i32 %361, %362
  %364 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %365 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = or i32 %366, %363
  store i32 %367, i32* %365, align 8
  br label %368

368:                                              ; preds = %360, %353
  %369 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %370 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @NFS_ATTR_FATTR_NLINK, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %368
  %376 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %377 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %376, i32 0, i32 4
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.inode*, %struct.inode** %8, align 8
  %380 = getelementptr inbounds %struct.inode, %struct.inode* %379, i32 0, i32 8
  store i64 %378, i64* %380, align 8
  br label %393

381:                                              ; preds = %368
  %382 = load %struct.inode*, %struct.inode** %8, align 8
  %383 = load i32, i32* @NFS_CAP_NLINK, align 4
  %384 = call i64 @nfs_server_capable(%struct.inode* %382, i32 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %381
  %387 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %388 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %389 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = or i32 %390, %387
  store i32 %391, i32* %389, align 8
  br label %392

392:                                              ; preds = %386, %381
  br label %393

393:                                              ; preds = %392, %375
  %394 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %395 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @NFS_ATTR_FATTR_OWNER, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %406

400:                                              ; preds = %393
  %401 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %402 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.inode*, %struct.inode** %8, align 8
  %405 = getelementptr inbounds %struct.inode, %struct.inode* %404, i32 0, i32 3
  store i32 %403, i32* %405, align 4
  br label %418

406:                                              ; preds = %393
  %407 = load %struct.inode*, %struct.inode** %8, align 8
  %408 = load i32, i32* @NFS_CAP_OWNER, align 4
  %409 = call i64 @nfs_server_capable(%struct.inode* %407, i32 %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %406
  %412 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %413 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %414 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = or i32 %415, %412
  store i32 %416, i32* %414, align 8
  br label %417

417:                                              ; preds = %411, %406
  br label %418

418:                                              ; preds = %417, %400
  %419 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %420 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = load i32, i32* @NFS_ATTR_FATTR_GROUP, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %431

425:                                              ; preds = %418
  %426 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %427 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 8
  %429 = load %struct.inode*, %struct.inode** %8, align 8
  %430 = getelementptr inbounds %struct.inode, %struct.inode* %429, i32 0, i32 4
  store i32 %428, i32* %430, align 8
  br label %443

431:                                              ; preds = %418
  %432 = load %struct.inode*, %struct.inode** %8, align 8
  %433 = load i32, i32* @NFS_CAP_OWNER_GROUP, align 4
  %434 = call i64 @nfs_server_capable(%struct.inode* %432, i32 %433)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %442

436:                                              ; preds = %431
  %437 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %438 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %439 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = or i32 %440, %437
  store i32 %441, i32* %439, align 8
  br label %442

442:                                              ; preds = %436, %431
  br label %443

443:                                              ; preds = %442, %425
  %444 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %445 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* @NFS_ATTR_FATTR_BLOCKS_USED, align 4
  %448 = and i32 %446, %447
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %458

450:                                              ; preds = %443
  %451 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %452 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %451, i32 0, i32 3
  %453 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = load %struct.inode*, %struct.inode** %8, align 8
  %457 = getelementptr inbounds %struct.inode, %struct.inode* %456, i32 0, i32 7
  store i64 %455, i64* %457, align 8
  br label %458

458:                                              ; preds = %450, %443
  %459 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %460 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = load i32, i32* @NFS_ATTR_FATTR_SPACE_USED, align 4
  %463 = and i32 %461, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %474

465:                                              ; preds = %458
  %466 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %467 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %466, i32 0, i32 3
  %468 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = call i64 @nfs_calc_block_size(i32 %470)
  %472 = load %struct.inode*, %struct.inode** %8, align 8
  %473 = getelementptr inbounds %struct.inode, %struct.inode* %472, i32 0, i32 7
  store i64 %471, i64* %473, align 8
  br label %474

474:                                              ; preds = %465, %458
  %475 = load %struct.inode*, %struct.inode** %8, align 8
  %476 = call i32 @NFS_MINATTRTIMEO(%struct.inode* %475)
  %477 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %478 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %477, i32 0, i32 3
  store i32 %476, i32* %478, align 4
  %479 = load i64, i64* %11, align 8
  %480 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %481 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %480, i32 0, i32 1
  store i64 %479, i64* %481, align 8
  %482 = load i32, i32* @RB_ROOT, align 4
  %483 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %484 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %483, i32 0, i32 2
  store i32 %482, i32* %484, align 8
  %485 = load %struct.inode*, %struct.inode** %8, align 8
  %486 = call i32 @nfs_fscache_init_inode_cookie(%struct.inode* %485)
  %487 = load %struct.inode*, %struct.inode** %8, align 8
  %488 = call i32 @unlock_new_inode(%struct.inode* %487)
  br label %493

489:                                              ; preds = %55
  %490 = load %struct.inode*, %struct.inode** %8, align 8
  %491 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %492 = call i32 @nfs_refresh_inode(%struct.inode* %490, %struct.nfs_fattr* %491)
  br label %493

493:                                              ; preds = %489, %474
  %494 = load %struct.inode*, %struct.inode** %8, align 8
  %495 = getelementptr inbounds %struct.inode, %struct.inode* %494, i32 0, i32 6
  %496 = load %struct.TYPE_12__*, %struct.TYPE_12__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 4
  %499 = load %struct.inode*, %struct.inode** %8, align 8
  %500 = call i64 @NFS_FILEID(%struct.inode* %499)
  %501 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %502 = call i32 @nfs_display_fhandle_hash(%struct.nfs_fh* %501)
  %503 = load %struct.inode*, %struct.inode** %8, align 8
  %504 = getelementptr inbounds %struct.inode, %struct.inode* %503, i32 0, i32 5
  %505 = call i32 @atomic_read(i32* %504)
  %506 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %498, i64 %500, i32 %502, i32 %505)
  br label %507

507:                                              ; preds = %509, %493
  %508 = load %struct.inode*, %struct.inode** %8, align 8
  ret %struct.inode* %508

509:                                              ; preds = %51, %40, %32
  %510 = load %struct.inode*, %struct.inode** %8, align 8
  %511 = call i32 @PTR_ERR(%struct.inode* %510)
  %512 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %511)
  br label %507
}

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @nfs_attr_check_mountpoint(%struct.super_block*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_attr_use_mounted_on_fileid(%struct.nfs_fattr*) #1

declare dso_local i64 @nfs_fattr_to_ino_t(%struct.nfs_fattr*) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i64, i32, i32, %struct.nfs_find_desc*) #1

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @nfs_server_capable(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_16__* @NFS_SB(%struct.super_block*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @set_ext_aops(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @nfs_size_to_loff_t(i32) #1

declare dso_local i64 @nfs_calc_block_size(i32) #1

declare dso_local i32 @NFS_MINATTRTIMEO(%struct.inode*) #1

declare dso_local i32 @nfs_fscache_init_inode_cookie(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i64 @NFS_FILEID(%struct.inode*) #1

declare dso_local i32 @nfs_display_fhandle_hash(%struct.nfs_fh*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
