; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_mknod_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_mknod_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.ocfs2_super = type { %struct.TYPE_16__*, i64, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.inode = type { i32, i32, i64, i64, i64, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_15__, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i64, %struct.TYPE_13__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_15__ = type { %struct.ocfs2_extent_list, %struct.TYPE_14__ }
%struct.ocfs2_extent_list = type { i8*, i64, i64 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_17__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_INODE_SIGNATURE = common dso_local global i32 0, align 4
@OCFS2_VALID_FL = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, %struct.inode*, i32, %struct.buffer_head**, %struct.buffer_head*, i32*, %struct.ocfs2_alloc_context*)* @ocfs2_mknod_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_mknod_locked(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.inode* %2, i32 %3, %struct.buffer_head** %4, %struct.buffer_head* %5, i32* %6, %struct.ocfs2_alloc_context* %7) #0 {
  %9 = alloca %struct.ocfs2_super*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head**, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ocfs2_alloc_context*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ocfs2_dinode*, align 8
  %19 = alloca %struct.ocfs2_extent_list*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.buffer_head** %4, %struct.buffer_head*** %13, align 8
  store %struct.buffer_head* %5, %struct.buffer_head** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.ocfs2_alloc_context* %7, %struct.ocfs2_alloc_context** %16, align 8
  store i32 0, i32* %17, align 4
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %18, align 8
  store i32 0, i32* %20, align 4
  %23 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %28 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %16, align 8
  %29 = call i32 @ocfs2_claim_new_inode(%struct.ocfs2_super* %24, i32* %25, %struct.inode* %26, %struct.buffer_head* %27, %struct.ocfs2_alloc_context* %28, i32* %21, i32* %20)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %8
  %33 = load i32, i32* %17, align 4
  %34 = call i32 @mlog_errno(i32 %33)
  br label %279

35:                                               ; preds = %8
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %37 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = load i32, i32* %20, align 4
  %40 = call i32 @ino_from_blkno(%struct.TYPE_16__* %38, i32 %39)
  %41 = load %struct.inode*, %struct.inode** %11, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %20, align 4
  %44 = load %struct.inode*, %struct.inode** %11, align 8
  %45 = call %struct.TYPE_17__* @OCFS2_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %48 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %47, i32 0, i32 2
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %51 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = sext i32 %52 to i64
  %55 = load %struct.inode*, %struct.inode** %11, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 4
  store i64 %54, i64* %56, align 8
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %58 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %57, i32 0, i32 2
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %61 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = load i32, i32* %20, align 4
  %64 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_16__* %62, i32 %63)
  %65 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  store %struct.buffer_head* %64, %struct.buffer_head** %65, align 8
  %66 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %66, align 8
  %68 = icmp ne %struct.buffer_head* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %35
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %279

74:                                               ; preds = %35
  %75 = load %struct.inode*, %struct.inode** %11, align 8
  %76 = call i32 @INODE_CACHE(%struct.inode* %75)
  %77 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %77, align 8
  %79 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %76, %struct.buffer_head* %78)
  %80 = load i32*, i32** %15, align 8
  %81 = load %struct.inode*, %struct.inode** %11, align 8
  %82 = call i32 @INODE_CACHE(%struct.inode* %81)
  %83 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %83, align 8
  %85 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %86 = call i32 @ocfs2_journal_access_di(i32* %80, i32 %82, %struct.buffer_head* %84, i32 %85)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %279

92:                                               ; preds = %74
  %93 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %93, align 8
  %95 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %97, %struct.ocfs2_dinode** %18, align 8
  %98 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %99 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %100 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %99, i32 0, i32 0
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memset(%struct.ocfs2_dinode* %98, i32 0, i32 %103)
  %105 = load %struct.inode*, %struct.inode** %11, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @cpu_to_le32(i64 %107)
  %109 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %110 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %109, i32 0, i32 20
  store i8* %108, i8** %110, align 8
  %111 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %112 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i8* @cpu_to_le32(i64 %113)
  %115 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %116 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %115, i32 0, i32 19
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %20, align 4
  %118 = call i8* @cpu_to_le64(i32 %117)
  %119 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %120 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %119, i32 0, i32 18
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* %21, align 4
  %122 = call i8* @cpu_to_le16(i32 %121)
  %123 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %124 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %123, i32 0, i32 17
  store i8* %122, i8** %124, align 8
  %125 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %16, align 8
  %126 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @cpu_to_le16(i32 %127)
  %129 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %130 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %129, i32 0, i32 16
  store i8* %128, i8** %130, align 8
  %131 = load %struct.inode*, %struct.inode** %11, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call i8* @cpu_to_le32(i64 %133)
  %135 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %136 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %135, i32 0, i32 15
  store i8* %134, i8** %136, align 8
  %137 = load %struct.inode*, %struct.inode** %11, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i8* @cpu_to_le32(i64 %139)
  %141 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %142 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %141, i32 0, i32 14
  store i8* %140, i8** %142, align 8
  %143 = load %struct.inode*, %struct.inode** %11, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @cpu_to_le16(i32 %145)
  %147 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %148 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %147, i32 0, i32 13
  store i8* %146, i8** %148, align 8
  %149 = load %struct.inode*, %struct.inode** %11, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @S_ISCHR(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %92
  %155 = load %struct.inode*, %struct.inode** %11, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @S_ISBLK(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %154, %92
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @huge_encode_dev(i32 %161)
  %163 = call i8* @cpu_to_le64(i32 %162)
  %164 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %165 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %164, i32 0, i32 12
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  store i8* %163, i8** %167, align 8
  br label %168

168:                                              ; preds = %160, %154
  %169 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %170 = load %struct.inode*, %struct.inode** %11, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ocfs2_set_links_count(%struct.ocfs2_dinode* %169, i32 %172)
  %174 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %175 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %174, i32 0, i32 11
  store i64 0, i64* %175, align 8
  %176 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %177 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %176, i32 0, i32 10
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @OCFS2_INODE_SIGNATURE, align 4
  %180 = call i32 @strcpy(i32 %178, i32 %179)
  %181 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %182 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %181, i32 0, i32 9
  %183 = load i32, i32* @OCFS2_VALID_FL, align 4
  %184 = call i32 @le32_add_cpu(i32* %182, i32 %183)
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CURRENT_TIME, i32 0, i32 1), align 8
  %186 = call i8* @cpu_to_le64(i32 %185)
  %187 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %188 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %187, i32 0, i32 6
  store i8* %186, i8** %188, align 8
  %189 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %190 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %189, i32 0, i32 7
  store i8* %186, i8** %190, align 8
  %191 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %192 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %191, i32 0, i32 8
  store i8* %186, i8** %192, align 8
  %193 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CURRENT_TIME, i32 0, i32 0), align 8
  %194 = call i8* @cpu_to_le32(i64 %193)
  %195 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %196 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %195, i32 0, i32 3
  store i8* %194, i8** %196, align 8
  %197 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %198 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %197, i32 0, i32 4
  store i8* %194, i8** %198, align 8
  %199 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %200 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %199, i32 0, i32 5
  store i8* %194, i8** %200, align 8
  %201 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %202 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %201, i32 0, i32 2
  store i64 0, i64* %202, align 8
  %203 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %204 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @le16_to_cpu(i8* %205)
  store i32 %206, i32* %22, align 4
  %207 = load %struct.inode*, %struct.inode** %11, align 8
  %208 = getelementptr inbounds %struct.inode, %struct.inode* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i64 @S_ISDIR(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %233

212:                                              ; preds = %168
  %213 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %214 = call i64 @ocfs2_supports_inline_data(%struct.ocfs2_super* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %233

216:                                              ; preds = %212
  %217 = load i32, i32* %22, align 4
  %218 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %219 = or i32 %217, %218
  %220 = call i8* @cpu_to_le16(i32 %219)
  %221 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %222 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %221, i32 0, i32 1
  store i8* %220, i8** %222, align 8
  %223 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %224 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %223, i32 0, i32 0
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 8
  %226 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %227 = call i32 @ocfs2_max_inline_data_with_xattr(%struct.TYPE_16__* %225, %struct.ocfs2_dinode* %226)
  %228 = call i8* @cpu_to_le16(i32 %227)
  %229 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %230 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  store i8* %228, i8** %232, align 8
  br label %248

233:                                              ; preds = %212, %168
  %234 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %235 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  store %struct.ocfs2_extent_list* %236, %struct.ocfs2_extent_list** %19, align 8
  %237 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %19, align 8
  %238 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %237, i32 0, i32 2
  store i64 0, i64* %238, align 8
  %239 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %19, align 8
  %240 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %239, i32 0, i32 1
  store i64 0, i64* %240, align 8
  %241 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %242 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %241, i32 0, i32 0
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %242, align 8
  %244 = call i32 @ocfs2_extent_recs_per_inode(%struct.TYPE_16__* %243)
  %245 = call i8* @cpu_to_le16(i32 %244)
  %246 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %19, align 8
  %247 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %246, i32 0, i32 0
  store i8* %245, i8** %247, align 8
  br label %248

248:                                              ; preds = %233, %216
  %249 = load i32*, i32** %15, align 8
  %250 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %251 = load %struct.buffer_head*, %struct.buffer_head** %250, align 8
  %252 = call i32 @ocfs2_journal_dirty(i32* %249, %struct.buffer_head* %251)
  store i32 %252, i32* %17, align 4
  %253 = load i32, i32* %17, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %248
  %256 = load i32, i32* %17, align 4
  %257 = call i32 @mlog_errno(i32 %256)
  br label %279

258:                                              ; preds = %248
  %259 = load %struct.inode*, %struct.inode** %11, align 8
  %260 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %261 = call i32 @ocfs2_populate_inode(%struct.inode* %259, %struct.ocfs2_dinode* %260, i32 1)
  %262 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %263 = load %struct.inode*, %struct.inode** %11, align 8
  %264 = call i32 @INODE_CACHE(%struct.inode* %263)
  %265 = call i32 @ocfs2_ci_set_new(%struct.ocfs2_super* %262, i32 %264)
  %266 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %267 = call i32 @ocfs2_mount_local(%struct.ocfs2_super* %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %278, label %269

269:                                              ; preds = %258
  %270 = load %struct.inode*, %struct.inode** %11, align 8
  %271 = call i32 @ocfs2_create_new_inode_locks(%struct.inode* %270)
  store i32 %271, i32* %17, align 4
  %272 = load i32, i32* %17, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %269
  %275 = load i32, i32* %17, align 4
  %276 = call i32 @mlog_errno(i32 %275)
  br label %277

277:                                              ; preds = %274, %269
  br label %278

278:                                              ; preds = %277, %258
  store i32 0, i32* %17, align 4
  br label %279

279:                                              ; preds = %278, %255, %89, %69, %32
  %280 = load i32, i32* %17, align 4
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %279
  %283 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %284 = load %struct.buffer_head*, %struct.buffer_head** %283, align 8
  %285 = icmp ne %struct.buffer_head* %284, null
  br i1 %285, label %286, label %291

286:                                              ; preds = %282
  %287 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %288 = load %struct.buffer_head*, %struct.buffer_head** %287, align 8
  %289 = call i32 @brelse(%struct.buffer_head* %288)
  %290 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %290, align 8
  br label %291

291:                                              ; preds = %286, %282
  br label %292

292:                                              ; preds = %291, %279
  %293 = load i32, i32* %17, align 4
  %294 = call i32 @mlog_exit(i32 %293)
  %295 = load i32, i32* %17, align 4
  ret i32 %295
}

declare dso_local i32 @ocfs2_claim_new_inode(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ino_from_blkno(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_17__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_dinode*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i32 @ocfs2_set_links_count(%struct.ocfs2_dinode*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @ocfs2_supports_inline_data(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_max_inline_data_with_xattr(%struct.TYPE_16__*, %struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_extent_recs_per_inode(%struct.TYPE_16__*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_populate_inode(%struct.inode*, %struct.ocfs2_dinode*, i32) #1

declare dso_local i32 @ocfs2_ci_set_new(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_create_new_inode_locks(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
