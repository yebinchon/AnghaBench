; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i64, i64, i32, i8*, %struct.TYPE_11__, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32*, i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.dentry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.nameidata = type { i32 }
%struct.buffer_head = type { i32 }
%struct.fnode = type { i32, i8*, i32 }
%struct.hpfs_dirent = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_12__ = type { i32, i64, i64, i8*, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@hpfs_file_iops = common dso_local global i32 0, align 4
@hpfs_file_ops = common dso_local global i32 0, align 4
@hpfs_aops = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @hpfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.fnode*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.hpfs_dirent, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  store %struct.inode* null, %struct.inode** %12, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @hpfs_chk_name(i8* %27, i32* %11)
  store i32 %28, i32* %18, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %4
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %18, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i32 [ %37, %35 ], [ %39, %38 ]
  store i32 %41, i32* %5, align 4
  br label %271

42:                                               ; preds = %4
  %43 = call i32 (...) @lock_kernel()
  %44 = load i32, i32* @ENOSPC, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %18, align 4
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.fnode* @hpfs_alloc_fnode(i32 %48, i32 %52, i8** %15, %struct.buffer_head** %13)
  store %struct.fnode* %53, %struct.fnode** %14, align 8
  %54 = load %struct.fnode*, %struct.fnode** %14, align 8
  %55 = icmp ne %struct.fnode* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %42
  br label %268

57:                                               ; preds = %42
  %58 = call i32 @memset(%struct.hpfs_dirent* %17, i32 0, i32 32)
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 146
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %62, %57
  %65 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 46
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 2
  store i32 %71, i32* %72, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 6
  store i8* %73, i8** %74, align 8
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (...) @get_seconds()
  %79 = call i32 @gmt_to_local(i32 %77, i32 %78)
  %80 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 4
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.inode* @new_inode(i32 %85)
  store %struct.inode* %86, %struct.inode** %12, align 8
  %87 = load %struct.inode*, %struct.inode** %12, align 8
  %88 = icmp ne %struct.inode* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %64
  br label %260

90:                                               ; preds = %64
  %91 = load %struct.inode*, %struct.inode** %12, align 8
  %92 = call i32 @hpfs_init_inode(%struct.inode* %91)
  %93 = load i8*, i8** %15, align 8
  %94 = load %struct.inode*, %struct.inode** %12, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 6
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @S_IFREG, align 4
  %97 = load %struct.inode*, %struct.inode** %12, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.inode*, %struct.inode** %12, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, -74
  store i32 %104, i32* %102, align 8
  %105 = load %struct.inode*, %struct.inode** %12, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 13
  store i32* @hpfs_file_iops, i32** %106, align 8
  %107 = load %struct.inode*, %struct.inode** %12, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 12
  store i32* @hpfs_file_ops, i32** %108, align 8
  %109 = load %struct.inode*, %struct.inode** %12, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  %111 = load %struct.inode*, %struct.inode** %12, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @hpfs_decide_conv(%struct.inode* %111, i8* %112, i32 %113)
  %115 = load %struct.inode*, %struct.inode** %6, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 6
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.inode*, %struct.inode** %12, align 8
  %119 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %118)
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  store i8* %117, i8** %120, align 8
  %121 = load %struct.inode*, %struct.inode** %6, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @local_to_gmt(i32 %123, i32 %125)
  %127 = load %struct.inode*, %struct.inode** %12, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 9
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 8
  %130 = load %struct.inode*, %struct.inode** %12, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 10
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  store i32 %126, i32* %132, align 8
  %133 = load %struct.inode*, %struct.inode** %12, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 11
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store i32 %126, i32* %135, align 8
  %136 = load %struct.inode*, %struct.inode** %12, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 11
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i64 0, i64* %138, align 8
  %139 = load %struct.inode*, %struct.inode** %12, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 10
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  store i64 0, i64* %141, align 8
  %142 = load %struct.inode*, %struct.inode** %12, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 9
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = load %struct.inode*, %struct.inode** %12, align 8
  %146 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %145)
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  store i64 0, i64* %147, align 8
  %148 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %90
  %152 = load %struct.inode*, %struct.inode** %12, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, -147
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %151, %90
  %157 = load %struct.inode*, %struct.inode** %12, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 2
  store i32 1, i32* %158, align 8
  %159 = load %struct.inode*, %struct.inode** %12, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 8
  store i64 0, i64* %160, align 8
  %161 = load %struct.inode*, %struct.inode** %12, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 7
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  store i32* @hpfs_aops, i32** %163, align 8
  %164 = load %struct.inode*, %struct.inode** %12, align 8
  %165 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %164)
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  store i64 0, i64* %166, align 8
  %167 = load %struct.inode*, %struct.inode** %6, align 8
  %168 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %167)
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = call i32 @mutex_lock(i32* %169)
  %171 = load %struct.inode*, %struct.inode** %6, align 8
  %172 = load i8*, i8** %10, align 8
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @hpfs_add_dirent(%struct.inode* %171, i8* %172, i32 %173, %struct.hpfs_dirent* %17, i32 0)
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %16, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %178

177:                                              ; preds = %156
  br label %253

178:                                              ; preds = %156
  %179 = load i32, i32* %16, align 4
  %180 = icmp eq i32 %179, -1
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* @EEXIST, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %18, align 4
  br label %253

184:                                              ; preds = %178
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.fnode*, %struct.fnode** %14, align 8
  %187 = getelementptr inbounds %struct.fnode, %struct.fnode* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load %struct.fnode*, %struct.fnode** %14, align 8
  %189 = getelementptr inbounds %struct.fnode, %struct.fnode* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i8*, i8** %10, align 8
  %192 = load i32, i32* %11, align 4
  %193 = icmp ugt i32 %192, 15
  br i1 %193, label %194, label %195

194:                                              ; preds = %184
  br label %197

195:                                              ; preds = %184
  %196 = load i32, i32* %11, align 4
  br label %197

197:                                              ; preds = %195, %194
  %198 = phi i32 [ 15, %194 ], [ %196, %195 ]
  %199 = call i32 @memcpy(i32 %190, i8* %191, i32 %198)
  %200 = load %struct.inode*, %struct.inode** %6, align 8
  %201 = getelementptr inbounds %struct.inode, %struct.inode* %200, i32 0, i32 6
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.fnode*, %struct.fnode** %14, align 8
  %204 = getelementptr inbounds %struct.fnode, %struct.fnode* %203, i32 0, i32 1
  store i8* %202, i8** %204, align 8
  %205 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %206 = call i32 @mark_buffer_dirty(%struct.buffer_head* %205)
  %207 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %208 = call i32 @brelse(%struct.buffer_head* %207)
  %209 = load %struct.inode*, %struct.inode** %12, align 8
  %210 = call i32 @insert_inode_hash(%struct.inode* %209)
  %211 = load %struct.inode*, %struct.inode** %12, align 8
  %212 = getelementptr inbounds %struct.inode, %struct.inode* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = call i64 (...) @current_fsuid()
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %230, label %216

216:                                              ; preds = %197
  %217 = load %struct.inode*, %struct.inode** %12, align 8
  %218 = getelementptr inbounds %struct.inode, %struct.inode* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = call i64 (...) @current_fsgid()
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %230, label %222

222:                                              ; preds = %216
  %223 = load %struct.inode*, %struct.inode** %12, align 8
  %224 = getelementptr inbounds %struct.inode, %struct.inode* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* @S_IFREG, align 4
  %228 = or i32 %226, %227
  %229 = icmp ne i32 %225, %228
  br i1 %229, label %230, label %244

230:                                              ; preds = %222, %216, %197
  %231 = call i64 (...) @current_fsuid()
  %232 = load %struct.inode*, %struct.inode** %12, align 8
  %233 = getelementptr inbounds %struct.inode, %struct.inode* %232, i32 0, i32 3
  store i64 %231, i64* %233, align 8
  %234 = call i64 (...) @current_fsgid()
  %235 = load %struct.inode*, %struct.inode** %12, align 8
  %236 = getelementptr inbounds %struct.inode, %struct.inode* %235, i32 0, i32 4
  store i64 %234, i64* %236, align 8
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* @S_IFREG, align 4
  %239 = or i32 %237, %238
  %240 = load %struct.inode*, %struct.inode** %12, align 8
  %241 = getelementptr inbounds %struct.inode, %struct.inode* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  %242 = load %struct.inode*, %struct.inode** %12, align 8
  %243 = call i32 @hpfs_write_inode_nolock(%struct.inode* %242)
  br label %244

244:                                              ; preds = %230, %222
  %245 = load %struct.dentry*, %struct.dentry** %7, align 8
  %246 = load %struct.inode*, %struct.inode** %12, align 8
  %247 = call i32 @d_instantiate(%struct.dentry* %245, %struct.inode* %246)
  %248 = load %struct.inode*, %struct.inode** %6, align 8
  %249 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %248)
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  %251 = call i32 @mutex_unlock(i32* %250)
  %252 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %5, align 4
  br label %271

253:                                              ; preds = %181, %177
  %254 = load %struct.inode*, %struct.inode** %6, align 8
  %255 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %254)
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = call i32 @mutex_unlock(i32* %256)
  %258 = load %struct.inode*, %struct.inode** %12, align 8
  %259 = call i32 @iput(%struct.inode* %258)
  br label %260

260:                                              ; preds = %253, %89
  %261 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %262 = call i32 @brelse(%struct.buffer_head* %261)
  %263 = load %struct.inode*, %struct.inode** %6, align 8
  %264 = getelementptr inbounds %struct.inode, %struct.inode* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  %266 = load i8*, i8** %15, align 8
  %267 = call i32 @hpfs_free_sectors(i32 %265, i8* %266, i32 1)
  br label %268

268:                                              ; preds = %260, %56
  %269 = call i32 (...) @unlock_kernel()
  %270 = load i32, i32* %18, align 4
  store i32 %270, i32* %5, align 4
  br label %271

271:                                              ; preds = %268, %244, %40
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local i32 @hpfs_chk_name(i8*, i32*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.fnode* @hpfs_alloc_fnode(i32, i32, i8**, %struct.buffer_head**) #1

declare dso_local %struct.TYPE_12__* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @memset(%struct.hpfs_dirent*, i32, i32) #1

declare dso_local i32 @gmt_to_local(i32, i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @hpfs_init_inode(%struct.inode*) #1

declare dso_local i32 @hpfs_decide_conv(%struct.inode*, i8*, i32) #1

declare dso_local i32 @local_to_gmt(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hpfs_add_dirent(%struct.inode*, i8*, i32, %struct.hpfs_dirent*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i64 @current_fsuid(...) #1

declare dso_local i64 @current_fsgid(...) #1

declare dso_local i32 @hpfs_write_inode_nolock(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @hpfs_free_sectors(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
