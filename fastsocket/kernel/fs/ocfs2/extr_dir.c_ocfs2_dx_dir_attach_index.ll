; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_attach_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_attach_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dinode = type { i8*, i8* }
%struct.ocfs2_dx_root_block = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.ocfs2_dir_block_trailer = type { i32 }
%struct.TYPE_10__ = type { i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"Dir %llu, attach new index block: %llu\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_DX_ROOT_SIGNATURE = common dso_local global i32 0, align 4
@OCFS2_DX_FLAG_INLINE = common dso_local global i32 0, align 4
@OCFS2_INDEXED_DIR_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, i32, i32, %struct.buffer_head**)* @ocfs2_dx_dir_attach_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dx_dir_attach_index(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, %struct.buffer_head* %3, %struct.buffer_head* %4, %struct.ocfs2_alloc_context* %5, i32 %6, i32 %7, %struct.buffer_head** %8) #0 {
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.ocfs2_alloc_context*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.buffer_head**, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_dinode*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.buffer_head*, align 8
  %25 = alloca %struct.ocfs2_dx_root_block*, align 8
  %26 = alloca %struct.ocfs2_dir_block_trailer*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.inode* %2, %struct.inode** %12, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %13, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %14, align 8
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.buffer_head** %8, %struct.buffer_head*** %18, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %30, %struct.ocfs2_dinode** %20, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %24, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %32 = load %struct.inode*, %struct.inode** %12, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head* %31, i32 %34)
  store %struct.ocfs2_dir_block_trailer* %35, %struct.ocfs2_dir_block_trailer** %26, align 8
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %39 = call i32 @ocfs2_claim_metadata(%struct.ocfs2_super* %36, i32* %37, %struct.ocfs2_alloc_context* %38, i32 1, i32* %21, i32* %23, i64* %22)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %9
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %218

45:                                               ; preds = %9
  %46 = load %struct.inode*, %struct.inode** %12, align 8
  %47 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %22, align 8
  %51 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %50)
  %52 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %53 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load i64, i64* %22, align 8
  %56 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_9__* %54, i64 %55)
  store %struct.buffer_head* %56, %struct.buffer_head** %24, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %58 = icmp eq %struct.buffer_head* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %19, align 4
  br label %218

62:                                               ; preds = %45
  %63 = load %struct.inode*, %struct.inode** %12, align 8
  %64 = call i32 @INODE_CACHE(%struct.inode* %63)
  %65 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %66 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %64, %struct.buffer_head* %65)
  %67 = load i32*, i32** %11, align 8
  %68 = load %struct.inode*, %struct.inode** %12, align 8
  %69 = call i32 @INODE_CACHE(%struct.inode* %68)
  %70 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %71 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %72 = call i32 @ocfs2_journal_access_dr(i32* %67, i32 %69, %struct.buffer_head* %70, i32 %71)
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %19, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load i32, i32* %19, align 4
  %77 = call i32 @mlog_errno(i32 %76)
  br label %218

78:                                               ; preds = %62
  %79 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %82, %struct.ocfs2_dx_root_block** %25, align 8
  %83 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %25, align 8
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %85 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memset(%struct.ocfs2_dx_root_block* %83, i32 0, i32 %88)
  %90 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %25, align 8
  %91 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @OCFS2_DX_ROOT_SIGNATURE, align 4
  %94 = call i32 @strcpy(i32 %92, i32 %93)
  %95 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %96 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @cpu_to_le16(i32 %97)
  %99 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %25, align 8
  %100 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %99, i32 0, i32 9
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* %21, align 4
  %102 = call i8* @cpu_to_le16(i32 %101)
  %103 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %25, align 8
  %104 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %103, i32 0, i32 8
  store i8* %102, i8** %104, align 8
  %105 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %106 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @cpu_to_le32(i32 %107)
  %109 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %25, align 8
  %110 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %109, i32 0, i32 7
  store i8* %108, i8** %110, align 8
  %111 = load i64, i64* %22, align 8
  %112 = call i8* @cpu_to_le64(i64 %111)
  %113 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %25, align 8
  %114 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  %115 = load %struct.inode*, %struct.inode** %12, align 8
  %116 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %115)
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i8* @cpu_to_le64(i64 %118)
  %120 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %25, align 8
  %121 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %120, i32 0, i32 5
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* %17, align 4
  %123 = call i8* @cpu_to_le32(i32 %122)
  %124 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %25, align 8
  %125 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  %126 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %26, align 8
  %127 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @le16_to_cpu(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %78
  %132 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %133 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i8* @cpu_to_le64(i64 %134)
  %136 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %25, align 8
  %137 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  br label %142

138:                                              ; preds = %78
  %139 = call i8* @cpu_to_le64(i64 0)
  %140 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %25, align 8
  %141 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %138, %131
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %142
  %146 = load i32, i32* @OCFS2_DX_FLAG_INLINE, align 4
  %147 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %25, align 8
  %148 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %152 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %151, i32 0, i32 0
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = call i32 @ocfs2_dx_entries_per_root(%struct.TYPE_9__* %153)
  %155 = call i8* @cpu_to_le16(i32 %154)
  %156 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %25, align 8
  %157 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i8* %155, i8** %158, align 8
  br label %168

159:                                              ; preds = %142
  %160 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %161 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %160, i32 0, i32 0
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = call i32 @ocfs2_extent_recs_per_dx_root(%struct.TYPE_9__* %162)
  %164 = call i8* @cpu_to_le16(i32 %163)
  %165 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %25, align 8
  %166 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  store i8* %164, i8** %167, align 8
  br label %168

168:                                              ; preds = %159, %145
  %169 = load i32*, i32** %11, align 8
  %170 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %171 = call i32 @ocfs2_journal_dirty(i32* %169, %struct.buffer_head* %170)
  store i32 %171, i32* %19, align 4
  %172 = load i32, i32* %19, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load i32, i32* %19, align 4
  %176 = call i32 @mlog_errno(i32 %175)
  br label %177

177:                                              ; preds = %174, %168
  %178 = load i32*, i32** %11, align 8
  %179 = load %struct.inode*, %struct.inode** %12, align 8
  %180 = call i32 @INODE_CACHE(%struct.inode* %179)
  %181 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %182 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %183 = call i32 @ocfs2_journal_access_di(i32* %178, i32 %180, %struct.buffer_head* %181, i32 %182)
  store i32 %183, i32* %19, align 4
  %184 = load i32, i32* %19, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %177
  %187 = load i32, i32* %19, align 4
  %188 = call i32 @mlog_errno(i32 %187)
  br label %218

189:                                              ; preds = %177
  %190 = load i64, i64* %22, align 8
  %191 = call i8* @cpu_to_le64(i64 %190)
  %192 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %193 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %192, i32 0, i32 1
  store i8* %191, i8** %193, align 8
  %194 = load i32, i32* @OCFS2_INDEXED_DIR_FL, align 4
  %195 = load %struct.inode*, %struct.inode** %12, align 8
  %196 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %195)
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %194
  store i32 %199, i32* %197, align 8
  %200 = load %struct.inode*, %struct.inode** %12, align 8
  %201 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %200)
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i8* @cpu_to_le16(i32 %203)
  %205 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %206 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %205, i32 0, i32 0
  store i8* %204, i8** %206, align 8
  %207 = load i32*, i32** %11, align 8
  %208 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %209 = call i32 @ocfs2_journal_dirty(i32* %207, %struct.buffer_head* %208)
  store i32 %209, i32* %19, align 4
  %210 = load i32, i32* %19, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %189
  %213 = load i32, i32* %19, align 4
  %214 = call i32 @mlog_errno(i32 %213)
  br label %215

215:                                              ; preds = %212, %189
  %216 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %217 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  store %struct.buffer_head* %216, %struct.buffer_head** %217, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %24, align 8
  br label %218

218:                                              ; preds = %215, %186, %75, %59, %42
  %219 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %220 = call i32 @brelse(%struct.buffer_head* %219)
  %221 = load i32, i32* %19, align 4
  ret i32 %221
}

declare dso_local %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_claim_metadata(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*, i32, i32*, i32*, i64*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

declare dso_local %struct.TYPE_10__* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_dr(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_dx_root_block*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_dx_entries_per_root(%struct.TYPE_9__*) #1

declare dso_local i32 @ocfs2_extent_recs_per_dx_root(%struct.TYPE_9__*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
