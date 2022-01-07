; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i64, i64, i32, i8*, i32*, i32*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.dentry = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.quad_buffer_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.fnode = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_13__, i8*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.dnode = type { i32, i8* }
%struct.TYPE_16__ = type { i32, i64, i8*, i8* }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@hpfs_dir_iops = common dso_local global i32 0, align 4
@hpfs_dir_ops = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @hpfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.quad_buffer_head, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.hpfs_dirent*, align 8
  %13 = alloca %struct.fnode*, align 8
  %14 = alloca %struct.dnode*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.hpfs_dirent, align 8
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @hpfs_chk_name(i8* %29, i32* %9)
  store i32 %30, i32* %20, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %3
  %33 = load i32, i32* %20, align 4
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %20, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %39, %37 ], [ %41, %40 ]
  store i32 %43, i32* %4, align 4
  br label %342

44:                                               ; preds = %3
  %45 = call i32 (...) @lock_kernel()
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %20, align 4
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = call %struct.TYPE_16__* @hpfs_i(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call %struct.fnode* @hpfs_alloc_fnode(i32 %50, i8* %54, i8** %16, %struct.buffer_head** %11)
  store %struct.fnode* %55, %struct.fnode** %13, align 8
  %56 = load %struct.fnode*, %struct.fnode** %13, align 8
  %57 = icmp ne %struct.fnode* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %44
  br label %339

59:                                               ; preds = %44
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = call %struct.dnode* @hpfs_alloc_dnode(i32 %62, i8* %63, i8** %17, %struct.quad_buffer_head* %10, i32 1)
  store %struct.dnode* %64, %struct.dnode** %14, align 8
  %65 = load %struct.dnode*, %struct.dnode** %14, align 8
  %66 = icmp ne %struct.dnode* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %331

68:                                               ; preds = %59
  %69 = call i32 @memset(%struct.hpfs_dirent* %19, i32 0, i32 48)
  %70 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 146
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %74, %68
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 46
  %82 = zext i1 %81 to i32
  %83 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 2
  store i32 %82, i32* %83, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 4
  store i8* %84, i8** %85, align 8
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (...) @get_seconds()
  %90 = call i8* @gmt_to_local(i32 %88, i32 %89)
  %91 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 5
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 6
  store i8* %90, i8** %92, align 8
  %93 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 7
  store i8* %90, i8** %93, align 8
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = call %struct.inode* @new_inode(i32 %96)
  store %struct.inode* %97, %struct.inode** %15, align 8
  %98 = load %struct.inode*, %struct.inode** %15, align 8
  %99 = icmp ne %struct.inode* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %76
  br label %324

101:                                              ; preds = %76
  %102 = load %struct.inode*, %struct.inode** %15, align 8
  %103 = call i32 @hpfs_init_inode(%struct.inode* %102)
  %104 = load i8*, i8** %16, align 8
  %105 = load %struct.inode*, %struct.inode** %15, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 7
  store i8* %104, i8** %106, align 8
  %107 = load %struct.inode*, %struct.inode** %5, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 7
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.inode*, %struct.inode** %15, align 8
  %111 = call %struct.TYPE_16__* @hpfs_i(%struct.inode* %110)
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 3
  store i8* %109, i8** %112, align 8
  %113 = load i8*, i8** %17, align 8
  %114 = load %struct.inode*, %struct.inode** %15, align 8
  %115 = call %struct.TYPE_16__* @hpfs_i(%struct.inode* %114)
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  store i8* %113, i8** %116, align 8
  %117 = load %struct.inode*, %struct.inode** %5, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 7
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @local_to_gmt(i32 %119, i8* %121)
  %123 = load %struct.inode*, %struct.inode** %15, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 10
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 8
  %126 = load %struct.inode*, %struct.inode** %15, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 11
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  store i32 %122, i32* %128, align 8
  %129 = load %struct.inode*, %struct.inode** %15, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 12
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  store i32 %122, i32* %131, align 8
  %132 = load %struct.inode*, %struct.inode** %15, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 12
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load %struct.inode*, %struct.inode** %15, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 11
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  %138 = load %struct.inode*, %struct.inode** %15, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 10
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  %141 = load %struct.inode*, %struct.inode** %15, align 8
  %142 = call %struct.TYPE_16__* @hpfs_i(%struct.inode* %141)
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  %144 = load i32, i32* @S_IFDIR, align 4
  %145 = load %struct.inode*, %struct.inode** %15, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load %struct.inode*, %struct.inode** %15, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 9
  store i32* @hpfs_dir_iops, i32** %150, align 8
  %151 = load %struct.inode*, %struct.inode** %15, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 8
  store i32* @hpfs_dir_ops, i32** %152, align 8
  %153 = load %struct.inode*, %struct.inode** %15, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 1
  store i32 4, i32* %154, align 4
  %155 = load %struct.inode*, %struct.inode** %15, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 2
  store i32 2048, i32* %156, align 8
  %157 = load %struct.inode*, %struct.inode** %15, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 3
  store i32 2, i32* %158, align 4
  %159 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %101
  %163 = load %struct.inode*, %struct.inode** %15, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, -147
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %162, %101
  %168 = load %struct.inode*, %struct.inode** %5, align 8
  %169 = call %struct.TYPE_16__* @hpfs_i(%struct.inode* %168)
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = call i32 @mutex_lock(i32* %170)
  %172 = load %struct.inode*, %struct.inode** %5, align 8
  %173 = load i8*, i8** %8, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @hpfs_add_dirent(%struct.inode* %172, i8* %173, i32 %174, %struct.hpfs_dirent* %19, i32 0)
  store i32 %175, i32* %18, align 4
  %176 = load i32, i32* %18, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %179

178:                                              ; preds = %167
  br label %317

179:                                              ; preds = %167
  %180 = load i32, i32* %18, align 4
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32, i32* @EEXIST, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %20, align 4
  br label %317

185:                                              ; preds = %179
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.fnode*, %struct.fnode** %13, align 8
  %188 = getelementptr inbounds %struct.fnode, %struct.fnode* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load %struct.fnode*, %struct.fnode** %13, align 8
  %190 = getelementptr inbounds %struct.fnode, %struct.fnode* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = load i8*, i8** %8, align 8
  %193 = load i32, i32* %9, align 4
  %194 = icmp ugt i32 %193, 15
  br i1 %194, label %195, label %196

195:                                              ; preds = %185
  br label %198

196:                                              ; preds = %185
  %197 = load i32, i32* %9, align 4
  br label %198

198:                                              ; preds = %196, %195
  %199 = phi i32 [ 15, %195 ], [ %197, %196 ]
  %200 = call i32 @memcpy(i32 %191, i8* %192, i32 %199)
  %201 = load %struct.inode*, %struct.inode** %5, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 7
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.fnode*, %struct.fnode** %13, align 8
  %205 = getelementptr inbounds %struct.fnode, %struct.fnode* %204, i32 0, i32 4
  store i8* %203, i8** %205, align 8
  %206 = load %struct.fnode*, %struct.fnode** %13, align 8
  %207 = getelementptr inbounds %struct.fnode, %struct.fnode* %206, i32 0, i32 1
  store i32 1, i32* %207, align 4
  %208 = load %struct.fnode*, %struct.fnode** %13, align 8
  %209 = getelementptr inbounds %struct.fnode, %struct.fnode* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  store i32 7, i32* %210, align 8
  %211 = load %struct.fnode*, %struct.fnode** %13, align 8
  %212 = getelementptr inbounds %struct.fnode, %struct.fnode* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  store i32 1, i32* %213, align 4
  %214 = load %struct.fnode*, %struct.fnode** %13, align 8
  %215 = getelementptr inbounds %struct.fnode, %struct.fnode* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 2
  store i32 20, i32* %216, align 8
  %217 = load i8*, i8** %17, align 8
  %218 = load %struct.fnode*, %struct.fnode** %13, align 8
  %219 = getelementptr inbounds %struct.fnode, %struct.fnode* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i64 0
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 1
  store i8* %217, i8** %223, align 8
  %224 = load %struct.fnode*, %struct.fnode** %13, align 8
  %225 = getelementptr inbounds %struct.fnode, %struct.fnode* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  store i32 -1, i32* %229, align 8
  %230 = load %struct.dnode*, %struct.dnode** %14, align 8
  %231 = getelementptr inbounds %struct.dnode, %struct.dnode* %230, i32 0, i32 0
  store i32 1, i32* %231, align 8
  %232 = load i8*, i8** %16, align 8
  %233 = load %struct.dnode*, %struct.dnode** %14, align 8
  %234 = getelementptr inbounds %struct.dnode, %struct.dnode* %233, i32 0, i32 1
  store i8* %232, i8** %234, align 8
  %235 = load %struct.inode*, %struct.inode** %5, align 8
  %236 = getelementptr inbounds %struct.inode, %struct.inode* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.dnode*, %struct.dnode** %14, align 8
  %239 = call %struct.hpfs_dirent* @hpfs_add_de(i32 %237, %struct.dnode* %238, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32 0)
  store %struct.hpfs_dirent* %239, %struct.hpfs_dirent** %12, align 8
  %240 = load %struct.inode*, %struct.inode** %5, align 8
  %241 = getelementptr inbounds %struct.inode, %struct.inode* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 8
  %243 = call i32 (...) @get_seconds()
  %244 = call i8* @gmt_to_local(i32 %242, i32 %243)
  %245 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %246 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %245, i32 0, i32 5
  store i8* %244, i8** %246, align 8
  %247 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %248 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %247, i32 0, i32 6
  store i8* %244, i8** %248, align 8
  %249 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %250 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %249, i32 0, i32 7
  store i8* %244, i8** %250, align 8
  %251 = load i32, i32* %7, align 4
  %252 = and i32 %251, 146
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %198
  %255 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %256 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %255, i32 0, i32 1
  store i32 1, i32* %256, align 4
  br label %257

257:                                              ; preds = %254, %198
  %258 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %259 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %258, i32 0, i32 0
  store i32 1, i32* %259, align 8
  %260 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %261 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %260, i32 0, i32 3
  store i32 1, i32* %261, align 4
  %262 = load i8*, i8** %16, align 8
  %263 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %264 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %263, i32 0, i32 4
  store i8* %262, i8** %264, align 8
  %265 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %266 = call i32 @mark_buffer_dirty(%struct.buffer_head* %265)
  %267 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %268 = call i32 @brelse(%struct.buffer_head* %267)
  %269 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %10)
  %270 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %10)
  %271 = load %struct.inode*, %struct.inode** %5, align 8
  %272 = call i32 @inc_nlink(%struct.inode* %271)
  %273 = load %struct.inode*, %struct.inode** %15, align 8
  %274 = call i32 @insert_inode_hash(%struct.inode* %273)
  %275 = load %struct.inode*, %struct.inode** %15, align 8
  %276 = getelementptr inbounds %struct.inode, %struct.inode* %275, i32 0, i32 4
  %277 = load i64, i64* %276, align 8
  %278 = call i64 (...) @current_fsuid()
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %294, label %280

280:                                              ; preds = %257
  %281 = load %struct.inode*, %struct.inode** %15, align 8
  %282 = getelementptr inbounds %struct.inode, %struct.inode* %281, i32 0, i32 5
  %283 = load i64, i64* %282, align 8
  %284 = call i64 (...) @current_fsgid()
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %294, label %286

286:                                              ; preds = %280
  %287 = load %struct.inode*, %struct.inode** %15, align 8
  %288 = getelementptr inbounds %struct.inode, %struct.inode* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* @S_IFDIR, align 4
  %292 = or i32 %290, %291
  %293 = icmp ne i32 %289, %292
  br i1 %293, label %294, label %308

294:                                              ; preds = %286, %280, %257
  %295 = call i64 (...) @current_fsuid()
  %296 = load %struct.inode*, %struct.inode** %15, align 8
  %297 = getelementptr inbounds %struct.inode, %struct.inode* %296, i32 0, i32 4
  store i64 %295, i64* %297, align 8
  %298 = call i64 (...) @current_fsgid()
  %299 = load %struct.inode*, %struct.inode** %15, align 8
  %300 = getelementptr inbounds %struct.inode, %struct.inode* %299, i32 0, i32 5
  store i64 %298, i64* %300, align 8
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* @S_IFDIR, align 4
  %303 = or i32 %301, %302
  %304 = load %struct.inode*, %struct.inode** %15, align 8
  %305 = getelementptr inbounds %struct.inode, %struct.inode* %304, i32 0, i32 0
  store i32 %303, i32* %305, align 8
  %306 = load %struct.inode*, %struct.inode** %15, align 8
  %307 = call i32 @hpfs_write_inode_nolock(%struct.inode* %306)
  br label %308

308:                                              ; preds = %294, %286
  %309 = load %struct.dentry*, %struct.dentry** %6, align 8
  %310 = load %struct.inode*, %struct.inode** %15, align 8
  %311 = call i32 @d_instantiate(%struct.dentry* %309, %struct.inode* %310)
  %312 = load %struct.inode*, %struct.inode** %5, align 8
  %313 = call %struct.TYPE_16__* @hpfs_i(%struct.inode* %312)
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 0
  %315 = call i32 @mutex_unlock(i32* %314)
  %316 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %4, align 4
  br label %342

317:                                              ; preds = %182, %178
  %318 = load %struct.inode*, %struct.inode** %5, align 8
  %319 = call %struct.TYPE_16__* @hpfs_i(%struct.inode* %318)
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 0
  %321 = call i32 @mutex_unlock(i32* %320)
  %322 = load %struct.inode*, %struct.inode** %15, align 8
  %323 = call i32 @iput(%struct.inode* %322)
  br label %324

324:                                              ; preds = %317, %100
  %325 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %10)
  %326 = load %struct.inode*, %struct.inode** %5, align 8
  %327 = getelementptr inbounds %struct.inode, %struct.inode* %326, i32 0, i32 6
  %328 = load i32, i32* %327, align 8
  %329 = load i8*, i8** %17, align 8
  %330 = call i32 @hpfs_free_dnode(i32 %328, i8* %329)
  br label %331

331:                                              ; preds = %324, %67
  %332 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %333 = call i32 @brelse(%struct.buffer_head* %332)
  %334 = load %struct.inode*, %struct.inode** %5, align 8
  %335 = getelementptr inbounds %struct.inode, %struct.inode* %334, i32 0, i32 6
  %336 = load i32, i32* %335, align 8
  %337 = load i8*, i8** %16, align 8
  %338 = call i32 @hpfs_free_sectors(i32 %336, i8* %337, i32 1)
  br label %339

339:                                              ; preds = %331, %58
  %340 = call i32 (...) @unlock_kernel()
  %341 = load i32, i32* %20, align 4
  store i32 %341, i32* %4, align 4
  br label %342

342:                                              ; preds = %339, %308, %42
  %343 = load i32, i32* %4, align 4
  ret i32 %343
}

declare dso_local i32 @hpfs_chk_name(i8*, i32*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.fnode* @hpfs_alloc_fnode(i32, i8*, i8**, %struct.buffer_head**) #1

declare dso_local %struct.TYPE_16__* @hpfs_i(%struct.inode*) #1

declare dso_local %struct.dnode* @hpfs_alloc_dnode(i32, i8*, i8**, %struct.quad_buffer_head*, i32) #1

declare dso_local i32 @memset(%struct.hpfs_dirent*, i32, i32) #1

declare dso_local i8* @gmt_to_local(i32, i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @hpfs_init_inode(%struct.inode*) #1

declare dso_local i32 @local_to_gmt(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hpfs_add_dirent(%struct.inode*, i8*, i32, %struct.hpfs_dirent*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local %struct.hpfs_dirent* @hpfs_add_de(i32, %struct.dnode*, i8*, i32, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i64 @current_fsuid(...) #1

declare dso_local i64 @current_fsgid(...) #1

declare dso_local i32 @hpfs_write_inode_nolock(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @hpfs_free_dnode(i32, i8*) #1

declare dso_local i32 @hpfs_free_sectors(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
