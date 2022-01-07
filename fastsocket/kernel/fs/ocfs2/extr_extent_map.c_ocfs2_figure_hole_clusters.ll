; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_extent_map.c_ocfs2_figure_hole_clusters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_extent_map.c_ocfs2_figure_hole_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.ocfs2_extent_list = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list, i32 }

@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_figure_hole_clusters(%struct.ocfs2_caching_info* %0, %struct.ocfs2_extent_list* %1, %struct.buffer_head* %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.ocfs2_caching_info*, align 8
  %7 = alloca %struct.ocfs2_extent_list*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.ocfs2_extent_block*, align 8
  %15 = alloca %struct.ocfs2_extent_block*, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %6, align 8
  store %struct.ocfs2_extent_list* %1, %struct.ocfs2_extent_list** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %16 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %7, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @ocfs2_search_for_hole_index(%struct.ocfs2_extent_list* %16, i64 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %7, align 8
  %21 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @le16_to_cpu(i32 %22)
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %5
  %26 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %27 = icmp ne %struct.buffer_head* %26, null
  br i1 %27, label %28, label %61

28:                                               ; preds = %25
  %29 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %32, %struct.ocfs2_extent_block** %14, align 8
  %33 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %14, align 8
  %34 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @le64_to_cpu(i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %62

39:                                               ; preds = %28
  %40 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %6, align 8
  %41 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %14, align 8
  %42 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @le64_to_cpu(i32 %43)
  %45 = call i32 @ocfs2_read_extent_block(%struct.ocfs2_caching_info* %40, i64 %44, %struct.buffer_head** %13)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %88

51:                                               ; preds = %39
  %52 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %55, %struct.ocfs2_extent_block** %15, align 8
  %56 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %15, align 8
  %57 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %56, i32 0, i32 0
  store %struct.ocfs2_extent_list* %57, %struct.ocfs2_extent_list** %7, align 8
  %58 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @ocfs2_search_for_hole_index(%struct.ocfs2_extent_list* %58, i64 %59)
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %51, %25, %5
  br label %62

62:                                               ; preds = %61, %38
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %7, align 8
  %65 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = icmp eq i32 %63, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i64, i64* @UINT_MAX, align 8
  %71 = load i64, i64* %9, align 8
  %72 = sub nsw i64 %70, %71
  %73 = load i64*, i64** %10, align 8
  store i64 %72, i64* %73, align 8
  br label %87

74:                                               ; preds = %62
  %75 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %7, align 8
  %76 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @le32_to_cpu(i32 %82)
  %84 = load i64, i64* %9, align 8
  %85 = sub nsw i64 %83, %84
  %86 = load i64*, i64** %10, align 8
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %74, %69
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %87, %48
  %89 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %90 = call i32 @brelse(%struct.buffer_head* %89)
  %91 = load i32, i32* %11, align 4
  ret i32 %91
}

declare dso_local i32 @ocfs2_search_for_hole_index(%struct.ocfs2_extent_list*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_read_extent_block(%struct.ocfs2_caching_info*, i64, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
