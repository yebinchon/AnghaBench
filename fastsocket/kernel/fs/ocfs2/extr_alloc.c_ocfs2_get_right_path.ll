; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_get_right_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_get_right_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i64 }
%struct.ocfs2_extent_list = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path**)* @ocfs2_get_right_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_get_right_path(%struct.ocfs2_extent_tree* %0, %struct.ocfs2_path* %1, %struct.ocfs2_path** %2) #0 {
  %4 = alloca %struct.ocfs2_extent_tree*, align 8
  %5 = alloca %struct.ocfs2_path*, align 8
  %6 = alloca %struct.ocfs2_path**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ocfs2_path*, align 8
  %10 = alloca %struct.ocfs2_extent_list*, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %4, align 8
  store %struct.ocfs2_path* %1, %struct.ocfs2_path** %5, align 8
  store %struct.ocfs2_path** %2, %struct.ocfs2_path*** %6, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %9, align 8
  %11 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %6, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %11, align 8
  %12 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %13 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %19 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %18)
  store %struct.ocfs2_extent_list* %19, %struct.ocfs2_extent_list** %10, align 8
  %20 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %10, align 8
  %21 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %10, align 8
  %24 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %4, align 8
  %30 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ocfs2_metadata_cache_get_super(i32 %31)
  %33 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %34 = call i32 @ocfs2_find_cpos_for_right_leaf(i32 %32, %struct.ocfs2_path* %33, i64* %8)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @mlog_errno(i32 %38)
  br label %69

40:                                               ; preds = %3
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %46 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %45)
  store %struct.ocfs2_path* %46, %struct.ocfs2_path** %9, align 8
  %47 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %48 = icmp ne %struct.ocfs2_path* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %69

54:                                               ; preds = %40
  %55 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %4, align 8
  %56 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @ocfs2_find_path(i32 %57, %struct.ocfs2_path* %58, i64 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %69

66:                                               ; preds = %54
  %67 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %68 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %6, align 8
  store %struct.ocfs2_path* %67, %struct.ocfs2_path** %68, align 8
  br label %69

69:                                               ; preds = %66, %63, %49, %37
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %74 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_cpos_for_right_leaf(i32, %struct.ocfs2_path*, i64*) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i64) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
