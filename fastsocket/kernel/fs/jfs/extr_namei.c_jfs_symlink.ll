; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i64, i32, i32, i32, %struct.super_block*, %struct.TYPE_6__*, i32* }
%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.dentry = type { %struct.inode* }
%struct.component_name = type { i32 }
%struct.btstack = type { i32 }
%struct.metapage = type { i32* }
%struct.tblock = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"jfs_symlink: dip:0x%p name:%s\00", align 1
@S_IFLNK = common dso_local global i32 0, align 4
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@COMMIT_CREATE = common dso_local global i32 0, align 4
@IDATASIZE = common dso_local global i32 0, align 4
@jfs_symlink_inode_operations = common dso_local global i32 0, align 4
@INLINEEA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"jfs_symlink: fast symlink added  ssize:%d name:%s \00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"jfs_symlink: allocate extent ip:0x%p\00", align 1
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@jfs_aops = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@COMMIT_PWMAP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@JFS_CREATE = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"jfs_symlink: rc:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @jfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.component_name, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btstack, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.metapage*, align 8
  %21 = alloca %struct.super_block*, align 8
  %22 = alloca %struct.tblock*, align 8
  %23 = alloca [2 x %struct.inode*], align 16
  %24 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.inode* %28, i8* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = call i32 @get_UCSname(%struct.component_name* %10, %struct.dentry* %34)
  store i32 %35, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %294

38:                                               ; preds = %3
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = load i32, i32* @S_IFLNK, align 4
  %41 = or i32 %40, 511
  %42 = call %struct.inode* @ialloc(%struct.inode* %39, i32 %41)
  store %struct.inode* %42, %struct.inode** %13, align 8
  %43 = load %struct.inode*, %struct.inode** %13, align 8
  %44 = call i64 @IS_ERR(%struct.inode* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.inode*, %struct.inode** %13, align 8
  %48 = call i32 @PTR_ERR(%struct.inode* %47)
  store i32 %48, i32* %7, align 4
  br label %292

49:                                               ; preds = %38
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 6
  %52 = load %struct.super_block*, %struct.super_block** %51, align 8
  %53 = call i32 @txBegin(%struct.super_block* %52, i32 0)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %54)
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %58 = call i32 @mutex_lock_nested(i32* %56, i32 %57)
  %59 = load %struct.inode*, %struct.inode** %13, align 8
  %60 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %63 = call i32 @mutex_lock_nested(i32* %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.inode*, %struct.inode** %13, align 8
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = call i32 @jfs_init_security(i32 %64, %struct.inode* %65, %struct.inode* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %49
  br label %263

71:                                               ; preds = %49
  %72 = load i32, i32* %8, align 4
  %73 = call %struct.tblock* @tid_to_tblock(i32 %72)
  store %struct.tblock* %73, %struct.tblock** %22, align 8
  %74 = load i32, i32* @COMMIT_CREATE, align 4
  %75 = load %struct.tblock*, %struct.tblock** %22, align 8
  %76 = getelementptr inbounds %struct.tblock, %struct.tblock* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.inode*, %struct.inode** %13, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.tblock*, %struct.tblock** %22, align 8
  %83 = getelementptr inbounds %struct.tblock, %struct.tblock* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.inode*, %struct.inode** %13, align 8
  %85 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %84)
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.tblock*, %struct.tblock** %22, align 8
  %89 = getelementptr inbounds %struct.tblock, %struct.tblock* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load %struct.inode*, %struct.inode** %13, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, 511
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.inode*, %struct.inode** %13, align 8
  %97 = call i32 @xtInitRoot(i32 %95, %struct.inode* %96)
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @IDATASIZE, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %131

101:                                              ; preds = %71
  %102 = load %struct.inode*, %struct.inode** %13, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 8
  store i32* @jfs_symlink_inode_operations, i32** %103, align 8
  %104 = load %struct.inode*, %struct.inode** %13, align 8
  %105 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %104)
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  store i32* %107, i32** %14, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @memcpy(i32* %108, i8* %109, i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = sub nsw i32 %112, 1
  %114 = load %struct.inode*, %struct.inode** %13, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp ugt i64 %117, 8
  br i1 %118, label %119, label %127

119:                                              ; preds = %101
  %120 = load i32, i32* @INLINEEA, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.inode*, %struct.inode** %13, align 8
  %123 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %122)
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, %121
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %119, %101
  %128 = load i32, i32* %11, align 4
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %128, i8* %129)
  br label %219

131:                                              ; preds = %71
  %132 = load %struct.inode*, %struct.inode** %13, align 8
  %133 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %132)
  %134 = load %struct.inode*, %struct.inode** %13, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 8
  store i32* @page_symlink_inode_operations, i32** %135, align 8
  %136 = load %struct.inode*, %struct.inode** %13, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 7
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i32* @jfs_aops, i32** %139, align 8
  %140 = load %struct.inode*, %struct.inode** %13, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 6
  %142 = load %struct.super_block*, %struct.super_block** %141, align 8
  store %struct.super_block* %142, %struct.super_block** %21, align 8
  %143 = load %struct.super_block*, %struct.super_block** %21, align 8
  %144 = call %struct.TYPE_7__* @JFS_SBI(%struct.super_block* %143)
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %148, %149
  %151 = load i32, i32* %16, align 4
  %152 = xor i32 %151, -1
  %153 = and i32 %150, %152
  store i32 %153, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %154 = load i32, i32* %17, align 4
  %155 = load %struct.super_block*, %struct.super_block** %21, align 8
  %156 = call %struct.TYPE_7__* @JFS_SBI(%struct.super_block* %155)
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = ashr i32 %154, %158
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.inode*, %struct.inode** %13, align 8
  %162 = load i32, i32* %15, align 4
  %163 = call i32 @xtInsert(i32 %160, %struct.inode* %161, i32 0, i32 0, i32 %162, i32* %19, i32 0)
  store i32 %163, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %131
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @txAbort(i32 %166, i32 0)
  br label %263

168:                                              ; preds = %131
  %169 = load i32, i32* %19, align 4
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %11, align 4
  %171 = sub nsw i32 %170, 1
  %172 = load %struct.inode*, %struct.inode** %13, align 8
  %173 = getelementptr inbounds %struct.inode, %struct.inode* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %196, %168
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %218

177:                                              ; preds = %174
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @PSIZE, align 4
  %180 = call i32 @min(i32 %178, i32 %179)
  store i32 %180, i32* %24, align 4
  %181 = load %struct.inode*, %struct.inode** %13, align 8
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* @PSIZE, align 4
  %184 = call %struct.metapage* @get_metapage(%struct.inode* %181, i32 %182, i32 %183, i32 1)
  store %struct.metapage* %184, %struct.metapage** %20, align 8
  %185 = load %struct.metapage*, %struct.metapage** %20, align 8
  %186 = icmp eq %struct.metapage* %185, null
  br i1 %186, label %187, label %196

187:                                              ; preds = %177
  %188 = load i32, i32* %8, align 4
  %189 = load %struct.inode*, %struct.inode** %13, align 8
  %190 = load i32, i32* @COMMIT_PWMAP, align 4
  %191 = call i32 @xtTruncate(i32 %188, %struct.inode* %189, i32 0, i32 %190)
  %192 = load i32, i32* @EIO, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @txAbort(i32 %194, i32 0)
  br label %263

196:                                              ; preds = %177
  %197 = load %struct.metapage*, %struct.metapage** %20, align 8
  %198 = getelementptr inbounds %struct.metapage, %struct.metapage* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i8*, i8** %6, align 8
  %201 = load i32, i32* %24, align 4
  %202 = call i32 @memcpy(i32* %199, i8* %200, i32 %201)
  %203 = load %struct.metapage*, %struct.metapage** %20, align 8
  %204 = call i32 @flush_metapage(%struct.metapage* %203)
  %205 = load i32, i32* %24, align 4
  %206 = load i32, i32* %11, align 4
  %207 = sub nsw i32 %206, %205
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %24, align 4
  %209 = load i8*, i8** %6, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8* %211, i8** %6, align 8
  %212 = load %struct.super_block*, %struct.super_block** %21, align 8
  %213 = call %struct.TYPE_7__* @JFS_SBI(%struct.super_block* %212)
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %19, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %19, align 4
  br label %174

218:                                              ; preds = %174
  br label %219

219:                                              ; preds = %218, %127
  %220 = load %struct.inode*, %struct.inode** %4, align 8
  %221 = load i32, i32* @JFS_CREATE, align 4
  %222 = call i32 @dtSearch(%struct.inode* %220, %struct.component_name* %10, i32* %9, %struct.btstack* %12, i32 %221)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %219
  %226 = load %struct.inode*, %struct.inode** %13, align 8
  %227 = getelementptr inbounds %struct.inode, %struct.inode* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 8
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %8, align 4
  %230 = load %struct.inode*, %struct.inode** %4, align 8
  %231 = call i32 @dtInsert(i32 %229, %struct.inode* %230, %struct.component_name* %10, i32* %9, %struct.btstack* %12)
  store i32 %231, i32* %7, align 4
  br label %232

232:                                              ; preds = %225, %219
  %233 = load i32, i32* %7, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %246

235:                                              ; preds = %232
  %236 = load i32, i32* %15, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.inode*, %struct.inode** %13, align 8
  %241 = load i32, i32* @COMMIT_PWMAP, align 4
  %242 = call i32 @xtTruncate(i32 %239, %struct.inode* %240, i32 0, i32 %241)
  br label %243

243:                                              ; preds = %238, %235
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @txAbort(i32 %244, i32 0)
  br label %263

246:                                              ; preds = %232
  %247 = load %struct.inode*, %struct.inode** %13, align 8
  %248 = call i32 @mark_inode_dirty(%struct.inode* %247)
  %249 = load i32, i32* @CURRENT_TIME, align 4
  %250 = load %struct.inode*, %struct.inode** %4, align 8
  %251 = getelementptr inbounds %struct.inode, %struct.inode* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 8
  %252 = load %struct.inode*, %struct.inode** %4, align 8
  %253 = getelementptr inbounds %struct.inode, %struct.inode* %252, i32 0, i32 4
  store i32 %249, i32* %253, align 4
  %254 = load %struct.inode*, %struct.inode** %4, align 8
  %255 = call i32 @mark_inode_dirty(%struct.inode* %254)
  %256 = load %struct.inode*, %struct.inode** %4, align 8
  %257 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %23, i64 0, i64 0
  store %struct.inode* %256, %struct.inode** %257, align 16
  %258 = load %struct.inode*, %struct.inode** %13, align 8
  %259 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %23, i64 0, i64 1
  store %struct.inode* %258, %struct.inode** %259, align 8
  %260 = load i32, i32* %8, align 4
  %261 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %23, i64 0, i64 0
  %262 = call i32 @txCommit(i32 %260, i32 2, %struct.inode** %261, i32 0)
  store i32 %262, i32* %7, align 4
  br label %263

263:                                              ; preds = %246, %243, %187, %165, %70
  %264 = load i32, i32* %8, align 4
  %265 = call i32 @txEnd(i32 %264)
  %266 = load %struct.inode*, %struct.inode** %13, align 8
  %267 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %266)
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = call i32 @mutex_unlock(i32* %268)
  %270 = load %struct.inode*, %struct.inode** %4, align 8
  %271 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %270)
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 0
  %273 = call i32 @mutex_unlock(i32* %272)
  %274 = load i32, i32* %7, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %263
  %277 = load %struct.inode*, %struct.inode** %13, align 8
  %278 = call i32 @free_ea_wmap(%struct.inode* %277)
  %279 = load %struct.inode*, %struct.inode** %13, align 8
  %280 = getelementptr inbounds %struct.inode, %struct.inode* %279, i32 0, i32 2
  store i64 0, i64* %280, align 8
  %281 = load %struct.inode*, %struct.inode** %13, align 8
  %282 = call i32 @unlock_new_inode(%struct.inode* %281)
  %283 = load %struct.inode*, %struct.inode** %13, align 8
  %284 = call i32 @iput(%struct.inode* %283)
  br label %291

285:                                              ; preds = %263
  %286 = load %struct.dentry*, %struct.dentry** %5, align 8
  %287 = load %struct.inode*, %struct.inode** %13, align 8
  %288 = call i32 @d_instantiate(%struct.dentry* %286, %struct.inode* %287)
  %289 = load %struct.inode*, %struct.inode** %13, align 8
  %290 = call i32 @unlock_new_inode(%struct.inode* %289)
  br label %291

291:                                              ; preds = %285, %276
  br label %292

292:                                              ; preds = %291, %46
  %293 = call i32 @free_UCSname(%struct.component_name* %10)
  br label %294

294:                                              ; preds = %292, %37
  %295 = load i32, i32* %7, align 4
  %296 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %295)
  %297 = load i32, i32* %7, align 4
  ret i32 %297
}

declare dso_local i32 @jfs_info(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local %struct.inode* @ialloc(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @txBegin(%struct.super_block*, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @jfs_init_security(i32, %struct.inode*, %struct.inode*) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @xtInitRoot(i32, %struct.inode*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @xtInsert(i32, %struct.inode*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.metapage* @get_metapage(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @xtTruncate(i32, %struct.inode*, i32, i32) #1

declare dso_local i32 @flush_metapage(%struct.metapage*) #1

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i32*, %struct.btstack*, i32) #1

declare dso_local i32 @dtInsert(i32, %struct.inode*, %struct.component_name*, i32*, %struct.btstack*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_ea_wmap(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @free_UCSname(%struct.component_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
