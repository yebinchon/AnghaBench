; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_shift_tree_depth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_shift_tree_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { %struct.buffer_head*, i32, %struct.ocfs2_extent_list* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_list = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_extent_block = type { i32, %struct.ocfs2_extent_list }

@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_alloc_context*, %struct.buffer_head**)* @ocfs2_shift_tree_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_shift_tree_depth(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_alloc_context* %2, %struct.buffer_head** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_extent_tree*, align 8
  %7 = alloca %struct.ocfs2_alloc_context*, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ocfs2_extent_block*, align 8
  %14 = alloca %struct.ocfs2_extent_list*, align 8
  %15 = alloca %struct.ocfs2_extent_list*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %6, align 8
  store %struct.ocfs2_alloc_context* %2, %struct.ocfs2_alloc_context** %7, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %16 = call i32 (...) @mlog_entry_void()
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %19 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %20 = call i32 @ocfs2_create_new_meta_bhs(i32* %17, %struct.ocfs2_extent_tree* %18, i32 1, %struct.ocfs2_alloc_context* %19, %struct.buffer_head** %12)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @mlog_errno(i32 %24)
  br label %183

26:                                               ; preds = %4
  %27 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %30, %struct.ocfs2_extent_block** %13, align 8
  %31 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %13, align 8
  %32 = call i32 @OCFS2_IS_VALID_EXTENT_BLOCK(%struct.ocfs2_extent_block* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %13, align 8
  %38 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %37, i32 0, i32 1
  store %struct.ocfs2_extent_list* %38, %struct.ocfs2_extent_list** %15, align 8
  %39 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %40 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %39, i32 0, i32 2
  %41 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %40, align 8
  store %struct.ocfs2_extent_list* %41, %struct.ocfs2_extent_list** %14, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %44 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %47 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %48 = call i32 @ocfs2_journal_access_eb(i32* %42, i32 %45, %struct.buffer_head* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %26
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %183

54:                                               ; preds = %26
  %55 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %56 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %61 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %64 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %87, %54
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %68 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @le16_to_cpu(i64 %69)
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %65
  %73 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %74 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %80 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = bitcast %struct.TYPE_2__* %78 to i8*
  %86 = bitcast %struct.TYPE_2__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  br label %87

87:                                               ; preds = %72
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %65

90:                                               ; preds = %65
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %93 = call i32 @ocfs2_journal_dirty(i32* %91, %struct.buffer_head* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %183

99:                                               ; preds = %90
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %102 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %103 = call i32 @ocfs2_et_root_journal_access(i32* %100, %struct.ocfs2_extent_tree* %101, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @mlog_errno(i32 %107)
  br label %183

109:                                              ; preds = %99
  %110 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %111 = call i32 @ocfs2_sum_rightmost_rec(%struct.ocfs2_extent_list* %110)
  store i32 %111, i32* %11, align 4
  %112 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %113 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %112, i32 0, i32 0
  %114 = call i32 @le16_add_cpu(i64* %113, i32 1)
  %115 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %116 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %13, align 8
  %121 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %124 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i32 %122, i32* %127, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @cpu_to_le32(i32 %128)
  %130 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %131 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i32 %129, i32* %134, align 8
  store i32 1, i32* %10, align 4
  br label %135

135:                                              ; preds = %150, %109
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %138 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @le16_to_cpu(i64 %139)
  %141 = icmp slt i32 %136, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %135
  %143 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %144 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %143, i32 0, i32 2
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = call i32 @memset(%struct.TYPE_2__* %148, i32 0, i32 4)
  br label %150

150:                                              ; preds = %142
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %135

153:                                              ; preds = %135
  %154 = call i64 @cpu_to_le16(i32 1)
  %155 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %156 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  %157 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %158 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @cpu_to_le16(i32 1)
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %153
  %163 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %164 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %13, align 8
  %165 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @le64_to_cpu(i32 %166)
  %168 = call i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree* %163, i32 %167)
  br label %169

169:                                              ; preds = %162, %153
  %170 = load i32*, i32** %5, align 8
  %171 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %172 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %171, i32 0, i32 0
  %173 = load %struct.buffer_head*, %struct.buffer_head** %172, align 8
  %174 = call i32 @ocfs2_journal_dirty(i32* %170, %struct.buffer_head* %173)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %169
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @mlog_errno(i32 %178)
  br label %183

180:                                              ; preds = %169
  %181 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %182 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %181, %struct.buffer_head** %182, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  store i32 0, i32* %9, align 4
  br label %183

183:                                              ; preds = %180, %177, %106, %96, %51, %23
  %184 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %185 = call i32 @brelse(%struct.buffer_head* %184)
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @mlog_exit(i32 %186)
  %188 = load i32, i32* %9, align 4
  ret i32 %188
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_create_new_meta_bhs(i32*, %struct.ocfs2_extent_tree*, i32, %struct.ocfs2_alloc_context*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_EXTENT_BLOCK(%struct.ocfs2_extent_block*) #1

declare dso_local i32 @ocfs2_journal_access_eb(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_et_root_journal_access(i32*, %struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @ocfs2_sum_rightmost_rec(%struct.ocfs2_extent_list*) #1

declare dso_local i32 @le16_add_cpu(i64*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
