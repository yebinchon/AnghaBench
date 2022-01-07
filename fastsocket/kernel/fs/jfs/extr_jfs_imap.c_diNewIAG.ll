; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diNewIAG.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diNewIAG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inomap = type { i32, i64, %struct.inode* }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.metapage = type { i64 }
%struct.jfs_sb_info = type { i32, i32 }
%struct.iag = type { i8*, i8**, i8*, i64, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@RDWRLOCK_IMAP = common dso_local global i32 0, align 4
@L2PSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"diNewIAG: ipimap->i_size is wrong\00", align 1
@EIO = common dso_local global i32 0, align 4
@MAXIAGS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@COMMIT_FORCE = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@COMMIT_PWMAP = common dso_local global i32 0, align 4
@EXTSPERIAG = common dso_local global i32 0, align 4
@SMAPSZ = common dso_local global i32 0, align 4
@ONES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inomap*, i32*, i32, %struct.metapage**)* @diNewIAG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diNewIAG(%struct.inomap* %0, i32* %1, i32 %2, %struct.metapage** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inomap*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.metapage**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.super_block*, align 8
  %16 = alloca %struct.jfs_sb_info*, align 8
  %17 = alloca %struct.metapage*, align 8
  %18 = alloca %struct.iag*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [1 x %struct.inode*], align 8
  store %struct.inomap* %0, %struct.inomap** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.metapage** %3, %struct.metapage*** %9, align 8
  store i32 0, i32* %19, align 4
  %23 = load %struct.inomap*, %struct.inomap** %6, align 8
  %24 = getelementptr inbounds %struct.inomap, %struct.inomap* %23, i32 0, i32 2
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %14, align 8
  %26 = load %struct.inode*, %struct.inode** %14, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load %struct.super_block*, %struct.super_block** %27, align 8
  store %struct.super_block* %28, %struct.super_block** %15, align 8
  %29 = load %struct.super_block*, %struct.super_block** %15, align 8
  %30 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %29)
  store %struct.jfs_sb_info* %30, %struct.jfs_sb_info** %16, align 8
  %31 = load %struct.inomap*, %struct.inomap** %6, align 8
  %32 = call i32 @IAGFREE_LOCK(%struct.inomap* %31)
  %33 = load %struct.inomap*, %struct.inomap** %6, align 8
  %34 = getelementptr inbounds %struct.inomap, %struct.inomap* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %4
  %38 = load %struct.inomap*, %struct.inomap** %6, align 8
  %39 = getelementptr inbounds %struct.inomap, %struct.inomap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %16, align 8
  %43 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @IAGTOLBLK(i32 %41, i32 %44)
  store i32 %45, i32* %20, align 4
  br label %245

46:                                               ; preds = %4
  %47 = load %struct.inode*, %struct.inode** %14, align 8
  %48 = load i32, i32* @RDWRLOCK_IMAP, align 4
  %49 = call i32 @IWRITE_LOCK(%struct.inode* %47, i32 %48)
  %50 = load %struct.inode*, %struct.inode** %14, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* @L2PSIZE, align 8
  %54 = trunc i64 %53 to i32
  %55 = ashr i32 %52, %54
  %56 = sext i32 %55 to i64
  %57 = load %struct.inomap*, %struct.inomap** %6, align 8
  %58 = getelementptr inbounds %struct.inomap, %struct.inomap* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %46
  %63 = load %struct.inode*, %struct.inode** %14, align 8
  %64 = call i32 @IWRITE_UNLOCK(%struct.inode* %63)
  %65 = load %struct.inomap*, %struct.inomap** %6, align 8
  %66 = call i32 @IAGFREE_UNLOCK(%struct.inomap* %65)
  %67 = load %struct.inomap*, %struct.inomap** %6, align 8
  %68 = getelementptr inbounds %struct.inomap, %struct.inomap* %67, i32 0, i32 2
  %69 = load %struct.inode*, %struct.inode** %68, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  %71 = load %struct.super_block*, %struct.super_block** %70, align 8
  %72 = call i32 @jfs_error(%struct.super_block* %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %280

75:                                               ; preds = %46
  %76 = load %struct.inomap*, %struct.inomap** %6, align 8
  %77 = getelementptr inbounds %struct.inomap, %struct.inomap* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @MAXIAGS, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load %struct.inode*, %struct.inode** %14, align 8
  %86 = call i32 @IWRITE_UNLOCK(%struct.inode* %85)
  %87 = load i32, i32* @ENOSPC, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %10, align 4
  br label %276

89:                                               ; preds = %75
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %16, align 8
  %92 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @IAGTOLBLK(i32 %90, i32 %93)
  store i32 %94, i32* %20, align 4
  %95 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %16, align 8
  %96 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %13, align 4
  %98 = load %struct.inode*, %struct.inode** %14, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @dbAlloc(%struct.inode* %98, i32 0, i32 %99, i32* %19)
  store i32 %100, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %89
  %103 = load %struct.inode*, %struct.inode** %14, align 8
  %104 = call i32 @IWRITE_UNLOCK(%struct.inode* %103)
  br label %276

105:                                              ; preds = %89
  %106 = load %struct.super_block*, %struct.super_block** %15, align 8
  %107 = load i32, i32* @COMMIT_FORCE, align 4
  %108 = call i32 @txBegin(%struct.super_block* %106, i32 %107)
  store i32 %108, i32* %21, align 4
  %109 = load %struct.inode*, %struct.inode** %14, align 8
  %110 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %109)
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i32 @mutex_lock(i32* %111)
  %113 = load i32, i32* %21, align 4
  %114 = load %struct.inode*, %struct.inode** %14, align 8
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @xtInsert(i32 %113, %struct.inode* %114, i32 0, i32 %115, i32 %116, i32* %19, i32 0)
  store i32 %117, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %105
  %120 = load i32, i32* %21, align 4
  %121 = call i32 @txEnd(i32 %120)
  %122 = load %struct.inode*, %struct.inode** %14, align 8
  %123 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %122)
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load %struct.inode*, %struct.inode** %14, align 8
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @dbFree(%struct.inode* %126, i32 %127, i32 %128)
  %130 = load %struct.inode*, %struct.inode** %14, align 8
  %131 = call i32 @IWRITE_UNLOCK(%struct.inode* %130)
  br label %276

132:                                              ; preds = %105
  %133 = load i32, i32* @PSIZE, align 4
  %134 = load %struct.inode*, %struct.inode** %14, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.inode*, %struct.inode** %14, align 8
  %139 = load i32, i32* @PSIZE, align 4
  %140 = call i32 @inode_add_bytes(%struct.inode* %138, i32 %139)
  %141 = load %struct.inode*, %struct.inode** %14, align 8
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* @PSIZE, align 4
  %144 = call %struct.metapage* @get_metapage(%struct.inode* %141, i32 %142, i32 %143, i32 0)
  store %struct.metapage* %144, %struct.metapage** %17, align 8
  %145 = load %struct.metapage*, %struct.metapage** %17, align 8
  %146 = icmp ne %struct.metapage* %145, null
  br i1 %146, label %169, label %147

147:                                              ; preds = %132
  %148 = load i32, i32* %21, align 4
  %149 = load %struct.inode*, %struct.inode** %14, align 8
  %150 = load %struct.inode*, %struct.inode** %14, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @PSIZE, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i32, i32* @COMMIT_PWMAP, align 4
  %156 = call i32 @xtTruncate(i32 %148, %struct.inode* %149, i32 %154, i32 %155)
  %157 = load i32, i32* %21, align 4
  %158 = call i32 @txAbort(i32 %157, i32 0)
  %159 = load i32, i32* %21, align 4
  %160 = call i32 @txEnd(i32 %159)
  %161 = load %struct.inode*, %struct.inode** %14, align 8
  %162 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %161)
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load %struct.inode*, %struct.inode** %14, align 8
  %166 = call i32 @IWRITE_UNLOCK(%struct.inode* %165)
  %167 = load i32, i32* @EIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %10, align 4
  br label %276

169:                                              ; preds = %132
  %170 = load %struct.metapage*, %struct.metapage** %17, align 8
  %171 = getelementptr inbounds %struct.metapage, %struct.metapage* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = inttoptr i64 %172 to %struct.iag*
  store %struct.iag* %173, %struct.iag** %18, align 8
  %174 = load %struct.iag*, %struct.iag** %18, align 8
  %175 = call i32 @memset(%struct.iag* %174, i32 0, i32 72)
  %176 = load i32, i32* %11, align 4
  %177 = call i8* @cpu_to_le32(i32 %176)
  %178 = load %struct.iag*, %struct.iag** %18, align 8
  %179 = getelementptr inbounds %struct.iag, %struct.iag* %178, i32 0, i32 8
  store i8* %177, i8** %179, align 8
  %180 = call i8* @cpu_to_le32(i32 -1)
  %181 = load %struct.iag*, %struct.iag** %18, align 8
  %182 = getelementptr inbounds %struct.iag, %struct.iag* %181, i32 0, i32 6
  store i8* %180, i8** %182, align 8
  %183 = load %struct.iag*, %struct.iag** %18, align 8
  %184 = getelementptr inbounds %struct.iag, %struct.iag* %183, i32 0, i32 7
  store i8* %180, i8** %184, align 8
  %185 = call i8* @cpu_to_le32(i32 -1)
  %186 = load %struct.iag*, %struct.iag** %18, align 8
  %187 = getelementptr inbounds %struct.iag, %struct.iag* %186, i32 0, i32 4
  store i8* %185, i8** %187, align 8
  %188 = load %struct.iag*, %struct.iag** %18, align 8
  %189 = getelementptr inbounds %struct.iag, %struct.iag* %188, i32 0, i32 5
  store i8* %185, i8** %189, align 8
  %190 = call i8* @cpu_to_le32(i32 -1)
  %191 = load %struct.iag*, %struct.iag** %18, align 8
  %192 = getelementptr inbounds %struct.iag, %struct.iag* %191, i32 0, i32 0
  store i8* %190, i8** %192, align 8
  %193 = load %struct.iag*, %struct.iag** %18, align 8
  %194 = getelementptr inbounds %struct.iag, %struct.iag* %193, i32 0, i32 3
  store i64 0, i64* %194, align 8
  %195 = load i32, i32* @EXTSPERIAG, align 4
  %196 = call i8* @cpu_to_le32(i32 %195)
  %197 = load %struct.iag*, %struct.iag** %18, align 8
  %198 = getelementptr inbounds %struct.iag, %struct.iag* %197, i32 0, i32 2
  store i8* %196, i8** %198, align 8
  store i32 0, i32* %12, align 4
  br label %199

199:                                              ; preds = %212, %169
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* @SMAPSZ, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %199
  %204 = load i32, i32* @ONES, align 4
  %205 = call i8* @cpu_to_le32(i32 %204)
  %206 = load %struct.iag*, %struct.iag** %18, align 8
  %207 = getelementptr inbounds %struct.iag, %struct.iag* %206, i32 0, i32 1
  %208 = load i8**, i8*** %207, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  store i8* %205, i8** %211, align 8
  br label %212

212:                                              ; preds = %203
  %213 = load i32, i32* %12, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %12, align 4
  br label %199

215:                                              ; preds = %199
  %216 = load %struct.metapage*, %struct.metapage** %17, align 8
  %217 = call i32 @flush_metapage(%struct.metapage* %216)
  %218 = load %struct.inode*, %struct.inode** %14, align 8
  %219 = getelementptr inbounds [1 x %struct.inode*], [1 x %struct.inode*]* %22, i64 0, i64 0
  store %struct.inode* %218, %struct.inode** %219, align 8
  %220 = load i32, i32* %21, align 4
  %221 = getelementptr inbounds [1 x %struct.inode*], [1 x %struct.inode*]* %22, i64 0, i64 0
  %222 = load i32, i32* @COMMIT_FORCE, align 4
  %223 = call i32 @txCommit(i32 %220, i32 1, %struct.inode** %221, i32 %222)
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %21, align 4
  %225 = call i32 @txEnd(i32 %224)
  %226 = load %struct.inode*, %struct.inode** %14, align 8
  %227 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %226)
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  %229 = call i32 @mutex_unlock(i32* %228)
  %230 = load %struct.super_block*, %struct.super_block** %15, align 8
  %231 = load i32, i32* %20, align 4
  %232 = load i32, i32* %13, align 4
  %233 = call i32 @duplicateIXtree(%struct.super_block* %230, i32 %231, i32 %232, i32* %19)
  %234 = load %struct.inomap*, %struct.inomap** %6, align 8
  %235 = getelementptr inbounds %struct.inomap, %struct.inomap* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %235, align 8
  %238 = load i32, i32* %11, align 4
  %239 = load %struct.inomap*, %struct.inomap** %6, align 8
  %240 = getelementptr inbounds %struct.inomap, %struct.inomap* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 8
  %241 = load %struct.inode*, %struct.inode** %14, align 8
  %242 = call i32 @diSync(%struct.inode* %241)
  %243 = load %struct.inode*, %struct.inode** %14, align 8
  %244 = call i32 @IWRITE_UNLOCK(%struct.inode* %243)
  br label %245

245:                                              ; preds = %215, %37
  %246 = load %struct.inode*, %struct.inode** %14, align 8
  %247 = load i32, i32* @RDWRLOCK_IMAP, align 4
  %248 = call i32 @IREAD_LOCK(%struct.inode* %246, i32 %247)
  %249 = load %struct.inomap*, %struct.inomap** %6, align 8
  %250 = load i32, i32* %11, align 4
  %251 = call i32 @diIAGRead(%struct.inomap* %249, i32 %250, %struct.metapage** %17)
  store i32 %251, i32* %10, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %245
  %254 = load %struct.inode*, %struct.inode** %14, align 8
  %255 = call i32 @IREAD_UNLOCK(%struct.inode* %254)
  %256 = load i32, i32* @EIO, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %10, align 4
  br label %276

258:                                              ; preds = %245
  %259 = load %struct.metapage*, %struct.metapage** %17, align 8
  %260 = getelementptr inbounds %struct.metapage, %struct.metapage* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = inttoptr i64 %261 to %struct.iag*
  store %struct.iag* %262, %struct.iag** %18, align 8
  %263 = load %struct.iag*, %struct.iag** %18, align 8
  %264 = getelementptr inbounds %struct.iag, %struct.iag* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @le32_to_cpu(i8* %265)
  %267 = load %struct.inomap*, %struct.inomap** %6, align 8
  %268 = getelementptr inbounds %struct.inomap, %struct.inomap* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 8
  %269 = call i8* @cpu_to_le32(i32 -1)
  %270 = load %struct.iag*, %struct.iag** %18, align 8
  %271 = getelementptr inbounds %struct.iag, %struct.iag* %270, i32 0, i32 0
  store i8* %269, i8** %271, align 8
  %272 = load i32, i32* %11, align 4
  %273 = load i32*, i32** %7, align 8
  store i32 %272, i32* %273, align 4
  %274 = load %struct.metapage*, %struct.metapage** %17, align 8
  %275 = load %struct.metapage**, %struct.metapage*** %9, align 8
  store %struct.metapage* %274, %struct.metapage** %275, align 8
  br label %276

276:                                              ; preds = %258, %253, %147, %119, %102, %84
  %277 = load %struct.inomap*, %struct.inomap** %6, align 8
  %278 = call i32 @IAGFREE_UNLOCK(%struct.inomap* %277)
  %279 = load i32, i32* %10, align 4
  store i32 %279, i32* %5, align 4
  br label %280

280:                                              ; preds = %276, %62
  %281 = load i32, i32* %5, align 4
  ret i32 %281
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @IAGFREE_LOCK(%struct.inomap*) #1

declare dso_local i32 @IAGTOLBLK(i32, i32) #1

declare dso_local i32 @IWRITE_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @IWRITE_UNLOCK(%struct.inode*) #1

declare dso_local i32 @IAGFREE_UNLOCK(%struct.inomap*) #1

declare dso_local i32 @jfs_error(%struct.super_block*, i8*) #1

declare dso_local i32 @dbAlloc(%struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @txBegin(%struct.super_block*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @xtInsert(i32, %struct.inode*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dbFree(%struct.inode*, i32, i32) #1

declare dso_local i32 @inode_add_bytes(%struct.inode*, i32) #1

declare dso_local %struct.metapage* @get_metapage(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @xtTruncate(i32, %struct.inode*, i32, i32) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i32 @memset(%struct.iag*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @flush_metapage(%struct.metapage*) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @duplicateIXtree(%struct.super_block*, i32, i32, i32*) #1

declare dso_local i32 @diSync(%struct.inode*) #1

declare dso_local i32 @IREAD_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @diIAGRead(%struct.inomap*, i32, %struct.metapage**) #1

declare dso_local i32 @IREAD_UNLOCK(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
