; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i8*, %struct.TYPE_12__, i32*, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.dentry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.buffer_head = type { i32 }
%struct.fnode = type { i32, i8*, i32 }
%struct.hpfs_dirent = type { i32, i32, i32, i32, i32, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64, i8*, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@hpfs_symlink_aops = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"SYMLINK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @hpfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.fnode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.hpfs_dirent, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @hpfs_chk_name(i8* %25, i32* %9)
  store i32 %26, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %3
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  br label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %16, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %35, %33 ], [ %37, %36 ]
  store i32 %39, i32* %4, align 4
  br label %234

40:                                               ; preds = %3
  %41 = call i32 (...) @lock_kernel()
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_13__* @hpfs_sb(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = call i32 (...) @unlock_kernel()
  %51 = load i32, i32* @EPERM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %234

53:                                               ; preds = %40
  %54 = load i32, i32* @ENOSPC, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %16, align 4
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call %struct.TYPE_14__* @hpfs_i(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.fnode* @hpfs_alloc_fnode(i32 %58, i32 %62, i8** %12, %struct.buffer_head** %10)
  store %struct.fnode* %63, %struct.fnode** %11, align 8
  %64 = load %struct.fnode*, %struct.fnode** %11, align 8
  %65 = icmp ne %struct.fnode* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %53
  br label %231

67:                                               ; preds = %53
  %68 = call i32 @memset(%struct.hpfs_dirent* %14, i32 0, i32 32)
  %69 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %14, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 46
  %75 = zext i1 %74 to i32
  %76 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %14, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %14, i32 0, i32 5
  store i8* %77, i8** %78, align 8
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (...) @get_seconds()
  %83 = call i32 @gmt_to_local(i32 %81, i32 %82)
  %84 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %14, i32 0, i32 3
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %14, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %14, i32 0, i32 2
  store i32 %83, i32* %86, align 8
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.inode* @new_inode(i32 %89)
  store %struct.inode* %90, %struct.inode** %15, align 8
  %91 = load %struct.inode*, %struct.inode** %15, align 8
  %92 = icmp ne %struct.inode* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %67
  br label %223

94:                                               ; preds = %67
  %95 = load i8*, i8** %12, align 8
  %96 = load %struct.inode*, %struct.inode** %15, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load %struct.inode*, %struct.inode** %15, align 8
  %99 = call i32 @hpfs_init_inode(%struct.inode* %98)
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.inode*, %struct.inode** %15, align 8
  %104 = call %struct.TYPE_14__* @hpfs_i(%struct.inode* %103)
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  store i8* %102, i8** %105, align 8
  %106 = load %struct.inode*, %struct.inode** %5, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %14, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @local_to_gmt(i32 %108, i32 %110)
  %112 = load %struct.inode*, %struct.inode** %15, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 10
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 8
  %115 = load %struct.inode*, %struct.inode** %15, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 11
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  store i32 %111, i32* %117, align 8
  %118 = load %struct.inode*, %struct.inode** %15, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 12
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  store i32 %111, i32* %120, align 8
  %121 = load %struct.inode*, %struct.inode** %15, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 12
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  %124 = load %struct.inode*, %struct.inode** %15, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 11
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.inode*, %struct.inode** %15, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 10
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  %130 = load %struct.inode*, %struct.inode** %15, align 8
  %131 = call %struct.TYPE_14__* @hpfs_i(%struct.inode* %130)
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load i32, i32* @S_IFLNK, align 4
  %134 = or i32 %133, 511
  %135 = load %struct.inode*, %struct.inode** %15, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = call i32 (...) @current_fsuid()
  %138 = load %struct.inode*, %struct.inode** %15, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 9
  store i32 %137, i32* %139, align 8
  %140 = call i32 (...) @current_fsgid()
  %141 = load %struct.inode*, %struct.inode** %15, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 8
  store i32 %140, i32* %142, align 4
  %143 = load %struct.inode*, %struct.inode** %15, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  %145 = load %struct.inode*, %struct.inode** %15, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 2
  store i32 1, i32* %146, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = call i32 @strlen(i8* %147)
  %149 = load %struct.inode*, %struct.inode** %15, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 8
  %151 = load %struct.inode*, %struct.inode** %15, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 6
  store i32* @page_symlink_inode_operations, i32** %152, align 8
  %153 = load %struct.inode*, %struct.inode** %15, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  store i32* @hpfs_symlink_aops, i32** %155, align 8
  %156 = load %struct.inode*, %struct.inode** %5, align 8
  %157 = call %struct.TYPE_14__* @hpfs_i(%struct.inode* %156)
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = call i32 @mutex_lock(i32* %158)
  %160 = load %struct.inode*, %struct.inode** %5, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @hpfs_add_dirent(%struct.inode* %160, i8* %161, i32 %162, %struct.hpfs_dirent* %14, i32 0)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %167

166:                                              ; preds = %94
  br label %216

167:                                              ; preds = %94
  %168 = load i32, i32* %13, align 4
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* @EEXIST, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %16, align 4
  br label %216

173:                                              ; preds = %167
  %174 = load i32, i32* %9, align 4
  %175 = load %struct.fnode*, %struct.fnode** %11, align 8
  %176 = getelementptr inbounds %struct.fnode, %struct.fnode* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.fnode*, %struct.fnode** %11, align 8
  %178 = getelementptr inbounds %struct.fnode, %struct.fnode* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = load i32, i32* %9, align 4
  %182 = icmp ugt i32 %181, 15
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  br label %186

184:                                              ; preds = %173
  %185 = load i32, i32* %9, align 4
  br label %186

186:                                              ; preds = %184, %183
  %187 = phi i32 [ 15, %183 ], [ %185, %184 ]
  %188 = call i32 @memcpy(i32 %179, i8* %180, i32 %187)
  %189 = load %struct.inode*, %struct.inode** %5, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 4
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.fnode*, %struct.fnode** %11, align 8
  %193 = getelementptr inbounds %struct.fnode, %struct.fnode* %192, i32 0, i32 1
  store i8* %191, i8** %193, align 8
  %194 = load %struct.inode*, %struct.inode** %15, align 8
  %195 = load %struct.fnode*, %struct.fnode** %11, align 8
  %196 = load i8*, i8** %7, align 8
  %197 = load i8*, i8** %7, align 8
  %198 = call i32 @strlen(i8* %197)
  %199 = call i32 @hpfs_set_ea(%struct.inode* %194, %struct.fnode* %195, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %196, i32 %198)
  %200 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %201 = call i32 @mark_buffer_dirty(%struct.buffer_head* %200)
  %202 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %203 = call i32 @brelse(%struct.buffer_head* %202)
  %204 = load %struct.inode*, %struct.inode** %15, align 8
  %205 = call i32 @insert_inode_hash(%struct.inode* %204)
  %206 = load %struct.inode*, %struct.inode** %15, align 8
  %207 = call i32 @hpfs_write_inode_nolock(%struct.inode* %206)
  %208 = load %struct.dentry*, %struct.dentry** %6, align 8
  %209 = load %struct.inode*, %struct.inode** %15, align 8
  %210 = call i32 @d_instantiate(%struct.dentry* %208, %struct.inode* %209)
  %211 = load %struct.inode*, %struct.inode** %5, align 8
  %212 = call %struct.TYPE_14__* @hpfs_i(%struct.inode* %211)
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = call i32 @mutex_unlock(i32* %213)
  %215 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %4, align 4
  br label %234

216:                                              ; preds = %170, %166
  %217 = load %struct.inode*, %struct.inode** %5, align 8
  %218 = call %struct.TYPE_14__* @hpfs_i(%struct.inode* %217)
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = call i32 @mutex_unlock(i32* %219)
  %221 = load %struct.inode*, %struct.inode** %15, align 8
  %222 = call i32 @iput(%struct.inode* %221)
  br label %223

223:                                              ; preds = %216, %93
  %224 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %225 = call i32 @brelse(%struct.buffer_head* %224)
  %226 = load %struct.inode*, %struct.inode** %5, align 8
  %227 = getelementptr inbounds %struct.inode, %struct.inode* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load i8*, i8** %12, align 8
  %230 = call i32 @hpfs_free_sectors(i32 %228, i8* %229, i32 1)
  br label %231

231:                                              ; preds = %223, %66
  %232 = call i32 (...) @unlock_kernel()
  %233 = load i32, i32* %16, align 4
  store i32 %233, i32* %4, align 4
  br label %234

234:                                              ; preds = %231, %186, %49, %38
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local i32 @hpfs_chk_name(i8*, i32*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.TYPE_13__* @hpfs_sb(i32) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local %struct.fnode* @hpfs_alloc_fnode(i32, i32, i8**, %struct.buffer_head**) #1

declare dso_local %struct.TYPE_14__* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @memset(%struct.hpfs_dirent*, i32, i32) #1

declare dso_local i32 @gmt_to_local(i32, i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @hpfs_init_inode(%struct.inode*) #1

declare dso_local i32 @local_to_gmt(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hpfs_add_dirent(%struct.inode*, i8*, i32, %struct.hpfs_dirent*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @hpfs_set_ea(%struct.inode*, %struct.fnode*, i8*, i8*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @hpfs_write_inode_nolock(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @hpfs_free_sectors(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
