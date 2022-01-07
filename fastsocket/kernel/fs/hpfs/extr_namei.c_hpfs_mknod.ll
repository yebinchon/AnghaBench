; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i8*, i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.dentry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.buffer_head = type { i32 }
%struct.fnode = type { i32, i8*, i32 }
%struct.hpfs_dirent = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64, i8*, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @hpfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.fnode*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.hpfs_dirent, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
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
  store %struct.inode* null, %struct.inode** %17, align 8
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
  br label %235

42:                                               ; preds = %4
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.TYPE_11__* @hpfs_sb(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EPERM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %235

53:                                               ; preds = %42
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @new_valid_dev(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %235

60:                                               ; preds = %53
  %61 = call i32 (...) @lock_kernel()
  %62 = load i32, i32* @ENOSPC, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %18, align 4
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.fnode* @hpfs_alloc_fnode(i32 %66, i32 %70, i8** %14, %struct.buffer_head** %12)
  store %struct.fnode* %71, %struct.fnode** %13, align 8
  %72 = load %struct.fnode*, %struct.fnode** %13, align 8
  %73 = icmp ne %struct.fnode* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %60
  br label %232

75:                                               ; preds = %60
  %76 = call i32 @memset(%struct.hpfs_dirent* %16, i32 0, i32 32)
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 146
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %80, %75
  %83 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 46
  %89 = zext i1 %88 to i32
  %90 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 2
  store i32 %89, i32* %90, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 6
  store i8* %91, i8** %92, align 8
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (...) @get_seconds()
  %97 = call i32 @gmt_to_local(i32 %95, i32 %96)
  %98 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 4
  store i32 %97, i32* %98, align 8
  %99 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 3
  store i32 %97, i32* %100, align 4
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call %struct.inode* @new_inode(i32 %103)
  store %struct.inode* %104, %struct.inode** %17, align 8
  %105 = load %struct.inode*, %struct.inode** %17, align 8
  %106 = icmp ne %struct.inode* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %82
  br label %224

108:                                              ; preds = %82
  %109 = load %struct.inode*, %struct.inode** %17, align 8
  %110 = call i32 @hpfs_init_inode(%struct.inode* %109)
  %111 = load i8*, i8** %14, align 8
  %112 = load %struct.inode*, %struct.inode** %17, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load %struct.inode*, %struct.inode** %6, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.inode*, %struct.inode** %17, align 8
  %118 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %117)
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  store i8* %116, i8** %119, align 8
  %120 = load %struct.inode*, %struct.inode** %6, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @local_to_gmt(i32 %122, i32 %124)
  %126 = load %struct.inode*, %struct.inode** %17, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 8
  %129 = load %struct.inode*, %struct.inode** %17, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  store i32 %125, i32* %131, align 8
  %132 = load %struct.inode*, %struct.inode** %17, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 9
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  store i32 %125, i32* %134, align 8
  %135 = load %struct.inode*, %struct.inode** %17, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 9
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  %138 = load %struct.inode*, %struct.inode** %17, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  %141 = load %struct.inode*, %struct.inode** %17, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 7
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  %144 = load %struct.inode*, %struct.inode** %17, align 8
  %145 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %144)
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  %147 = call i32 (...) @current_fsuid()
  %148 = load %struct.inode*, %struct.inode** %17, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 4
  %150 = call i32 (...) @current_fsgid()
  %151 = load %struct.inode*, %struct.inode** %17, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 8
  %153 = load %struct.inode*, %struct.inode** %17, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  %155 = load %struct.inode*, %struct.inode** %17, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 4
  store i64 0, i64* %156, align 8
  %157 = load %struct.inode*, %struct.inode** %17, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 1
  store i32 1, i32* %158, align 4
  %159 = load %struct.inode*, %struct.inode** %17, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @init_special_inode(%struct.inode* %159, i32 %160, i32 %161)
  %163 = load %struct.inode*, %struct.inode** %6, align 8
  %164 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %163)
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = call i32 @mutex_lock(i32* %165)
  %167 = load %struct.inode*, %struct.inode** %6, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @hpfs_add_dirent(%struct.inode* %167, i8* %168, i32 %169, %struct.hpfs_dirent* %16, i32 0)
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %15, align 4
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %174

173:                                              ; preds = %108
  br label %217

174:                                              ; preds = %108
  %175 = load i32, i32* %15, align 4
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* @EEXIST, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %18, align 4
  br label %217

180:                                              ; preds = %174
  %181 = load i32, i32* %11, align 4
  %182 = load %struct.fnode*, %struct.fnode** %13, align 8
  %183 = getelementptr inbounds %struct.fnode, %struct.fnode* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.fnode*, %struct.fnode** %13, align 8
  %185 = getelementptr inbounds %struct.fnode, %struct.fnode* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = load i32, i32* %11, align 4
  %189 = icmp ugt i32 %188, 15
  br i1 %189, label %190, label %191

190:                                              ; preds = %180
  br label %193

191:                                              ; preds = %180
  %192 = load i32, i32* %11, align 4
  br label %193

193:                                              ; preds = %191, %190
  %194 = phi i32 [ 15, %190 ], [ %192, %191 ]
  %195 = call i32 @memcpy(i32 %186, i8* %187, i32 %194)
  %196 = load %struct.inode*, %struct.inode** %6, align 8
  %197 = getelementptr inbounds %struct.inode, %struct.inode* %196, i32 0, i32 3
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.fnode*, %struct.fnode** %13, align 8
  %200 = getelementptr inbounds %struct.fnode, %struct.fnode* %199, i32 0, i32 1
  store i8* %198, i8** %200, align 8
  %201 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %202 = call i32 @mark_buffer_dirty(%struct.buffer_head* %201)
  %203 = load %struct.inode*, %struct.inode** %17, align 8
  %204 = call i32 @insert_inode_hash(%struct.inode* %203)
  %205 = load %struct.inode*, %struct.inode** %17, align 8
  %206 = call i32 @hpfs_write_inode_nolock(%struct.inode* %205)
  %207 = load %struct.dentry*, %struct.dentry** %7, align 8
  %208 = load %struct.inode*, %struct.inode** %17, align 8
  %209 = call i32 @d_instantiate(%struct.dentry* %207, %struct.inode* %208)
  %210 = load %struct.inode*, %struct.inode** %6, align 8
  %211 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %210)
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = call i32 @mutex_unlock(i32* %212)
  %214 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %215 = call i32 @brelse(%struct.buffer_head* %214)
  %216 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %5, align 4
  br label %235

217:                                              ; preds = %177, %173
  %218 = load %struct.inode*, %struct.inode** %6, align 8
  %219 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %218)
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  %221 = call i32 @mutex_unlock(i32* %220)
  %222 = load %struct.inode*, %struct.inode** %17, align 8
  %223 = call i32 @iput(%struct.inode* %222)
  br label %224

224:                                              ; preds = %217, %107
  %225 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %226 = call i32 @brelse(%struct.buffer_head* %225)
  %227 = load %struct.inode*, %struct.inode** %6, align 8
  %228 = getelementptr inbounds %struct.inode, %struct.inode* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i8*, i8** %14, align 8
  %231 = call i32 @hpfs_free_sectors(i32 %229, i8* %230, i32 1)
  br label %232

232:                                              ; preds = %224, %74
  %233 = call i32 (...) @unlock_kernel()
  %234 = load i32, i32* %18, align 4
  store i32 %234, i32* %5, align 4
  br label %235

235:                                              ; preds = %232, %193, %57, %50, %40
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @hpfs_chk_name(i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @hpfs_sb(i32) #1

declare dso_local i32 @new_valid_dev(i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.fnode* @hpfs_alloc_fnode(i32, i32, i8**, %struct.buffer_head**) #1

declare dso_local %struct.TYPE_12__* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @memset(%struct.hpfs_dirent*, i32, i32) #1

declare dso_local i32 @gmt_to_local(i32, i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @hpfs_init_inode(%struct.inode*) #1

declare dso_local i32 @local_to_gmt(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hpfs_add_dirent(%struct.inode*, i8*, i32, %struct.hpfs_dirent*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @hpfs_write_inode_nolock(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @hpfs_free_sectors(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
