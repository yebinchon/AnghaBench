; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_new_leaf_refcount_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_new_leaf_refcount_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.super_block = type { i32 }
%struct.ocfs2_refcount_block = type { i32, %struct.TYPE_4__, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8* }
%struct.ocfs2_extent_tree = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@OCFS2_REFCOUNT_TREE_FL = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_REFCOUNT_BLOCK_SIGNATURE = common dso_local global i32 0, align 4
@OCFS2_REFCOUNT_LEAF_FL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"insert new leaf block %llu at %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*)* @ocfs2_new_leaf_refcount_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_new_leaf_refcount_block(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, %struct.buffer_head* %3, %struct.ocfs2_alloc_context* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_caching_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_alloc_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.super_block*, align 8
  %17 = alloca %struct.ocfs2_refcount_block*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.ocfs2_refcount_block*, align 8
  %20 = alloca %struct.ocfs2_extent_tree, align 4
  store i32* %0, i32** %6, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_alloc_context* %4, %struct.ocfs2_alloc_context** %10, align 8
  %21 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %22 = call %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info* %21)
  store %struct.super_block* %22, %struct.super_block** %16, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %26, %struct.ocfs2_refcount_block** %17, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  %27 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %17, align 8
  %28 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @le32_to_cpu(i8* %29)
  %31 = load i32, i32* @OCFS2_REFCOUNT_TREE_FL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %40 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %41 = call i32 @ocfs2_journal_access_rb(i32* %37, %struct.ocfs2_caching_info* %38, %struct.buffer_head* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %5
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %187

47:                                               ; preds = %5
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %51 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %52 = call i32 @ocfs2_journal_access_rb(i32* %48, %struct.ocfs2_caching_info* %49, %struct.buffer_head* %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @mlog_errno(i32 %56)
  br label %187

58:                                               ; preds = %47
  %59 = load %struct.super_block*, %struct.super_block** %16, align 8
  %60 = call %struct.TYPE_5__* @OCFS2_SB(%struct.super_block* %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %63 = call i32 @ocfs2_claim_metadata(%struct.TYPE_5__* %60, i32* %61, %struct.ocfs2_alloc_context* %62, i32 1, i32* %12, i32* %13, i64* %15)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %187

69:                                               ; preds = %58
  %70 = load %struct.super_block*, %struct.super_block** %16, align 8
  %71 = load i64, i64* %15, align 8
  %72 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %70, i64 %71)
  store %struct.buffer_head* %72, %struct.buffer_head** %18, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %74 = icmp eq %struct.buffer_head* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @mlog_errno(i32 %78)
  br label %187

80:                                               ; preds = %69
  %81 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %83 = call i32 @ocfs2_set_new_buffer_uptodate(%struct.ocfs2_caching_info* %81, %struct.buffer_head* %82)
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %87 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %88 = call i32 @ocfs2_journal_access_rb(i32* %84, %struct.ocfs2_caching_info* %85, %struct.buffer_head* %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @mlog_errno(i32 %92)
  br label %187

94:                                               ; preds = %80
  %95 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %96 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %98, %struct.ocfs2_refcount_block** %19, align 8
  %99 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %19, align 8
  %100 = load %struct.super_block*, %struct.super_block** %16, align 8
  %101 = getelementptr inbounds %struct.super_block, %struct.super_block* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @memset(%struct.ocfs2_refcount_block* %99, i32 0, i32 %102)
  %104 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %19, align 8
  %105 = bitcast %struct.ocfs2_refcount_block* %104 to i8*
  %106 = load i32, i32* @OCFS2_REFCOUNT_BLOCK_SIGNATURE, align 4
  %107 = call i32 @strcpy(i8* %105, i32 %106)
  %108 = load %struct.super_block*, %struct.super_block** %16, align 8
  %109 = call %struct.TYPE_5__* @OCFS2_SB(%struct.super_block* %108)
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @cpu_to_le16(i32 %111)
  %113 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %19, align 8
  %114 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %113, i32 0, i32 7
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i8* @cpu_to_le16(i32 %115)
  %117 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %19, align 8
  %118 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %117, i32 0, i32 6
  store i8* %116, i8** %118, align 8
  %119 = load %struct.super_block*, %struct.super_block** %16, align 8
  %120 = call %struct.TYPE_5__* @OCFS2_SB(%struct.super_block* %119)
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @cpu_to_le32(i32 %122)
  %124 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %19, align 8
  %125 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  %126 = load i64, i64* %15, align 8
  %127 = call i8* @cpu_to_le64(i64 %126)
  %128 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %19, align 8
  %129 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %128, i32 0, i32 4
  store i8* %127, i8** %129, align 8
  %130 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %131 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i8* @cpu_to_le64(i64 %132)
  %134 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %19, align 8
  %135 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* @OCFS2_REFCOUNT_LEAF_FL, align 4
  %137 = call i8* @cpu_to_le32(i32 %136)
  %138 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %19, align 8
  %139 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %138, i32 0, i32 2
  store i8* %137, i8** %139, align 8
  %140 = load %struct.super_block*, %struct.super_block** %16, align 8
  %141 = call i32 @ocfs2_refcount_recs_per_rb(%struct.super_block* %140)
  %142 = call i8* @cpu_to_le16(i32 %141)
  %143 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %19, align 8
  %144 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i8* %142, i8** %145, align 8
  %146 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %17, align 8
  %147 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %19, align 8
  %150 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %152 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %153 = call i32 @ocfs2_divide_leaf_refcount_block(%struct.buffer_head* %151, %struct.buffer_head* %152, i32* %14)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %94
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @mlog_errno(i32 %157)
  br label %187

159:                                              ; preds = %94
  %160 = load i32*, i32** %6, align 8
  %161 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %162 = call i32 @ocfs2_journal_dirty(i32* %160, %struct.buffer_head* %161)
  %163 = load i32*, i32** %6, align 8
  %164 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %165 = call i32 @ocfs2_journal_dirty(i32* %163, %struct.buffer_head* %164)
  %166 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %167 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %168 = call i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree* %20, %struct.ocfs2_caching_info* %166, %struct.buffer_head* %167)
  %169 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %170 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %171, i32 %172)
  %174 = load i32*, i32** %6, align 8
  %175 = load i32, i32* %14, align 4
  %176 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %177 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %180 = call i32 @ocfs2_insert_extent(i32* %174, %struct.ocfs2_extent_tree* %20, i32 %175, i64 %178, i32 1, i32 0, %struct.ocfs2_alloc_context* %179)
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %159
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @mlog_errno(i32 %184)
  br label %186

186:                                              ; preds = %183, %159
  br label %187

187:                                              ; preds = %186, %156, %91, %75, %66, %55, %44
  %188 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %189 = call i32 @brelse(%struct.buffer_head* %188)
  %190 = load i32, i32* %11, align 4
  ret i32 %190
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @ocfs2_journal_access_rb(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_claim_metadata(%struct.TYPE_5__*, i32*, %struct.ocfs2_alloc_context*, i32, i32*, i32*, i64*) #1

declare dso_local %struct.TYPE_5__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i64) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(%struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @memset(%struct.ocfs2_refcount_block*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @ocfs2_refcount_recs_per_rb(%struct.super_block*) #1

declare dso_local i32 @ocfs2_divide_leaf_refcount_block(%struct.buffer_head*, %struct.buffer_head*, i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32) #1

declare dso_local i32 @ocfs2_insert_extent(i32*, %struct.ocfs2_extent_tree*, i32, i64, i32, i32, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
