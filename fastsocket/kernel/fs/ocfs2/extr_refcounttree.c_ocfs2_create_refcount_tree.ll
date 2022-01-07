; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_create_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_create_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dinode = type { i8*, i8* }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.ocfs2_super = type { i32, i32, i32, i32, i32 }
%struct.ocfs2_refcount_block = type { i64, %struct.TYPE_4__, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8* }
%struct.ocfs2_refcount_tree = type { i64, i32 }

@OCFS2_HAS_REFCOUNT_FL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"create tree for inode %lu\0A\00", align 1
@OCFS2_REFCOUNT_TREE_CREATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_REFCOUNT_BLOCK_SIGNATURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"created tree for inode %lu, refblock %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*)* @ocfs2_create_refcount_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_create_refcount_tree(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_alloc_context*, align 8
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.ocfs2_inode_info*, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_refcount_block*, align 8
  %13 = alloca %struct.ocfs2_refcount_tree*, align 8
  %14 = alloca %struct.ocfs2_refcount_tree*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32* null, i32** %6, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %7, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %21, %struct.ocfs2_dinode** %8, align 8
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %22)
  store %struct.ocfs2_inode_info* %23, %struct.ocfs2_inode_info** %9, align 8
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_5__* %26)
  store %struct.ocfs2_super* %27, %struct.ocfs2_super** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %13, align 8
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %14, align 8
  %28 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %29 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %39 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %38, i32 1, %struct.ocfs2_alloc_context** %7)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %2
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %259

45:                                               ; preds = %2
  %46 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %47 = load i32, i32* @OCFS2_REFCOUNT_TREE_CREATE_CREDITS, align 4
  %48 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %46, i32 %47)
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @IS_ERR(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @PTR_ERR(i32* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %259

57:                                               ; preds = %45
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = call i32 @INODE_CACHE(%struct.inode* %59)
  %61 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %62 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %63 = call i32 @ocfs2_journal_access_di(i32* %58, i32 %60, %struct.buffer_head* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %255

69:                                               ; preds = %57
  %70 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %73 = call i32 @ocfs2_claim_metadata(%struct.ocfs2_super* %70, i32* %71, %struct.ocfs2_alloc_context* %72, i32 1, i32* %15, i32* %16, i64* %17)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %255

79:                                               ; preds = %69
  %80 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %81 = load i64, i64* %17, align 8
  %82 = call %struct.ocfs2_refcount_tree* @ocfs2_allocate_refcount_tree(%struct.ocfs2_super* %80, i64 %81)
  store %struct.ocfs2_refcount_tree* %82, %struct.ocfs2_refcount_tree** %13, align 8
  %83 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %84 = icmp ne %struct.ocfs2_refcount_tree* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @mlog_errno(i32 %88)
  br label %255

90:                                               ; preds = %79
  %91 = load %struct.inode*, %struct.inode** %3, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i64, i64* %17, align 8
  %95 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_5__* %93, i64 %94)
  store %struct.buffer_head* %95, %struct.buffer_head** %11, align 8
  %96 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %97 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %96, i32 0, i32 1
  %98 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %99 = call i32 @ocfs2_set_new_buffer_uptodate(i32* %97, %struct.buffer_head* %98)
  %100 = load i32*, i32** %6, align 8
  %101 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %102 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %101, i32 0, i32 1
  %103 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %104 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %105 = call i32 @ocfs2_journal_access_rb(i32* %100, i32* %102, %struct.buffer_head* %103, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %90
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @mlog_errno(i32 %109)
  br label %255

111:                                              ; preds = %90
  %112 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %113 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %115, %struct.ocfs2_refcount_block** %12, align 8
  %116 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %117 = load %struct.inode*, %struct.inode** %3, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 1
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @memset(%struct.ocfs2_refcount_block* %116, i32 0, i32 %121)
  %123 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %124 = bitcast %struct.ocfs2_refcount_block* %123 to i8*
  %125 = load i32, i32* @OCFS2_REFCOUNT_BLOCK_SIGNATURE, align 4
  %126 = call i32 @strcpy(i8* %124, i32 %125)
  %127 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %128 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @cpu_to_le16(i32 %129)
  %131 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %132 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %131, i32 0, i32 6
  store i8* %130, i8** %132, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call i8* @cpu_to_le16(i32 %133)
  %135 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %136 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  %137 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %138 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @cpu_to_le32(i32 %139)
  %141 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %142 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %141, i32 0, i32 4
  store i8* %140, i8** %142, align 8
  %143 = load i64, i64* %17, align 8
  %144 = call i8* @cpu_to_le64(i64 %143)
  %145 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %146 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %145, i32 0, i32 3
  store i8* %144, i8** %146, align 8
  %147 = call i8* @cpu_to_le32(i32 1)
  %148 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %149 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %148, i32 0, i32 2
  store i8* %147, i8** %149, align 8
  %150 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %151 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ocfs2_refcount_recs_per_rb(i32 %152)
  %154 = call i8* @cpu_to_le16(i32 %153)
  %155 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %156 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  store i8* %154, i8** %157, align 8
  %158 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %159 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %158, i32 0, i32 2
  %160 = call i32 @spin_lock(i32* %159)
  %161 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %162 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  %165 = sext i32 %163 to i64
  %166 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %167 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  %168 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %169 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %168, i32 0, i32 2
  %170 = call i32 @spin_unlock(i32* %169)
  %171 = load i32*, i32** %6, align 8
  %172 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %173 = call i32 @ocfs2_journal_dirty(i32* %171, %struct.buffer_head* %172)
  %174 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %175 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %174, i32 0, i32 1
  %176 = call i32 @spin_lock(i32* %175)
  %177 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %178 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %179 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %183 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @cpu_to_le16(i32 %184)
  %186 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %187 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  %188 = load i64, i64* %17, align 8
  %189 = call i8* @cpu_to_le64(i64 %188)
  %190 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %191 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %190, i32 0, i32 0
  store i8* %189, i8** %191, align 8
  %192 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %193 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %192, i32 0, i32 1
  %194 = call i32 @spin_unlock(i32* %193)
  %195 = load %struct.inode*, %struct.inode** %3, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i64, i64* %17, align 8
  %199 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %197, i64 %198)
  %200 = load i32*, i32** %6, align 8
  %201 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %202 = call i32 @ocfs2_journal_dirty(i32* %200, %struct.buffer_head* %201)
  %203 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %204 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i64 @le32_to_cpu(i64 %205)
  %207 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %208 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  %209 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %210 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %211 = load i64, i64* %17, align 8
  %212 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %213 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @ocfs2_init_refcount_tree_lock(%struct.ocfs2_super* %209, %struct.ocfs2_refcount_tree* %210, i64 %211, i64 %214)
  %216 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %217 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %216, i32 0, i32 2
  %218 = call i32 @spin_lock(i32* %217)
  %219 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %220 = load i64, i64* %17, align 8
  %221 = call %struct.ocfs2_refcount_tree* @ocfs2_find_refcount_tree(%struct.ocfs2_super* %219, i64 %220)
  store %struct.ocfs2_refcount_tree* %221, %struct.ocfs2_refcount_tree** %14, align 8
  %222 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %223 = icmp ne %struct.ocfs2_refcount_tree* %222, null
  br i1 %223, label %224, label %232

224:                                              ; preds = %111
  %225 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %226 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %229 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp eq i64 %227, %230
  br label %232

232:                                              ; preds = %224, %111
  %233 = phi i1 [ false, %111 ], [ %231, %224 ]
  %234 = zext i1 %233 to i32
  %235 = call i32 @BUG_ON(i32 %234)
  %236 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %237 = icmp ne %struct.ocfs2_refcount_tree* %236, null
  br i1 %237, label %238, label %242

238:                                              ; preds = %232
  %239 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %240 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %241 = call i32 @ocfs2_erase_refcount_tree_from_list_no_lock(%struct.ocfs2_super* %239, %struct.ocfs2_refcount_tree* %240)
  br label %242

242:                                              ; preds = %238, %232
  %243 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %244 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %245 = call i32 @ocfs2_insert_refcount_tree(%struct.ocfs2_super* %243, %struct.ocfs2_refcount_tree* %244)
  %246 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %247 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %246, i32 0, i32 2
  %248 = call i32 @spin_unlock(i32* %247)
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %13, align 8
  %249 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %250 = icmp ne %struct.ocfs2_refcount_tree* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %242
  %252 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %253 = call i32 @ocfs2_refcount_tree_put(%struct.ocfs2_refcount_tree* %252)
  br label %254

254:                                              ; preds = %251, %242
  br label %255

255:                                              ; preds = %254, %108, %85, %76, %66
  %256 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %257 = load i32*, i32** %6, align 8
  %258 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %256, i32* %257)
  br label %259

259:                                              ; preds = %255, %52, %42
  %260 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %261 = icmp ne %struct.ocfs2_refcount_tree* %260, null
  br i1 %261, label %262, label %268

262:                                              ; preds = %259
  %263 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %264 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %263, i32 0, i32 1
  %265 = call i32 @ocfs2_metadata_cache_exit(i32* %264)
  %266 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %267 = call i32 @kfree(%struct.ocfs2_refcount_tree* %266)
  br label %268

268:                                              ; preds = %262, %259
  %269 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %270 = call i32 @brelse(%struct.buffer_head* %269)
  %271 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %272 = icmp ne %struct.ocfs2_alloc_context* %271, null
  br i1 %272, label %273, label %276

273:                                              ; preds = %268
  %274 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %275 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %274)
  br label %276

276:                                              ; preds = %273, %268
  %277 = load i32, i32* %5, align 4
  ret i32 %277
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_5__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_claim_metadata(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*, i32, i32*, i32*, i64*) #1

declare dso_local %struct.ocfs2_refcount_tree* @ocfs2_allocate_refcount_tree(%struct.ocfs2_super*, i64) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_rb(i32*, i32*, %struct.buffer_head*, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_refcount_block*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @ocfs2_refcount_recs_per_rb(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @ocfs2_init_refcount_tree_lock(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i64, i64) #1

declare dso_local %struct.ocfs2_refcount_tree* @ocfs2_find_refcount_tree(%struct.ocfs2_super*, i64) #1

declare dso_local i32 @ocfs2_erase_refcount_tree_from_list_no_lock(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @ocfs2_insert_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @ocfs2_refcount_tree_put(%struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_metadata_cache_exit(i32*) #1

declare dso_local i32 @kfree(%struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
