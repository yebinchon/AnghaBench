; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_find_branch_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_find_branch_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { %struct.ocfs2_extent_list*, i32 }
%struct.ocfs2_extent_list = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list }

@.str = private unnamed_addr constant [54 x i8] c"Owner %llu has empty extent list (next_free_rec == 0)\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"Owner %llu has extent list where extent # %d has no physical block start\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_extent_tree*, %struct.buffer_head**)* @ocfs2_find_branch_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_find_branch_target(%struct.ocfs2_extent_tree* %0, %struct.buffer_head** %1) #0 {
  %3 = alloca %struct.ocfs2_extent_tree*, align 8
  %4 = alloca %struct.buffer_head**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_extent_block*, align 8
  %9 = alloca %struct.ocfs2_extent_list*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %3, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %12 = call i32 (...) @mlog_entry_void()
  %13 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %14 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %15 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %14, i32 0, i32 0
  %16 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  store %struct.ocfs2_extent_list* %16, %struct.ocfs2_extent_list** %9, align 8
  br label %17

17:                                               ; preds = %106, %2
  %18 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %19 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @le16_to_cpu(i64 %20)
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %107

23:                                               ; preds = %17
  %24 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %25 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @le16_to_cpu(i64 %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %31 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ocfs2_metadata_cache_get_super(i32 %32)
  %34 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %35 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @ocfs2_metadata_cache_owner(i32 %36)
  %38 = call i32 (i32, i8*, i64, ...) @ocfs2_error(i32 %33, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %125

41:                                               ; preds = %23
  %42 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %43 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @le16_to_cpu(i64 %44)
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %48 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le64_to_cpu(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %41
  %59 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %60 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ocfs2_metadata_cache_get_super(i32 %61)
  %63 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %64 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ocfs2_metadata_cache_owner(i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i32, i8*, i64, ...) @ocfs2_error(i32 %62, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32 %67)
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %125

71:                                               ; preds = %41
  %72 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %73 = call i32 @brelse(%struct.buffer_head* %72)
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %74 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %75 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @ocfs2_read_extent_block(i32 %76, i32 %77, %struct.buffer_head** %10)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  br label %125

84:                                               ; preds = %71
  %85 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %88, %struct.ocfs2_extent_block** %8, align 8
  %89 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %8, align 8
  %90 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %89, i32 0, i32 0
  store %struct.ocfs2_extent_list* %90, %struct.ocfs2_extent_list** %9, align 8
  %91 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %92 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @le16_to_cpu(i64 %93)
  %95 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %96 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @le16_to_cpu(i64 %97)
  %99 = icmp slt i32 %94, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %84
  %101 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %102 = call i32 @brelse(%struct.buffer_head* %101)
  %103 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %103, %struct.buffer_head** %11, align 8
  %104 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %105 = call i32 @get_bh(%struct.buffer_head* %104)
  br label %106

106:                                              ; preds = %100, %84
  br label %17

107:                                              ; preds = %17
  %108 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %109 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %108, i32 0, i32 0
  %110 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %109, align 8
  store %struct.ocfs2_extent_list* %110, %struct.ocfs2_extent_list** %9, align 8
  %111 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %112 = icmp ne %struct.buffer_head* %111, null
  br i1 %112, label %122, label %113

113:                                              ; preds = %107
  %114 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %115 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %118 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  store i32 1, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %113, %107
  %123 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %124 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  store %struct.buffer_head* %123, %struct.buffer_head** %124, align 8
  br label %125

125:                                              ; preds = %122, %81, %58, %29
  %126 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %127 = call i32 @brelse(%struct.buffer_head* %126)
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @mlog_exit(i32 %128)
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, ...) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_read_extent_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
