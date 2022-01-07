; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_get_left_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_get_left_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path**)* @ocfs2_get_left_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_get_left_path(%struct.ocfs2_extent_tree* %0, %struct.ocfs2_path* %1, %struct.ocfs2_path** %2) #0 {
  %4 = alloca %struct.ocfs2_extent_tree*, align 8
  %5 = alloca %struct.ocfs2_path*, align 8
  %6 = alloca %struct.ocfs2_path**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ocfs2_path*, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %4, align 8
  store %struct.ocfs2_path* %1, %struct.ocfs2_path** %5, align 8
  store %struct.ocfs2_path** %2, %struct.ocfs2_path*** %6, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %9, align 8
  %10 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %6, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %10, align 8
  %11 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %12 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %4, align 8
  %18 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ocfs2_metadata_cache_get_super(i32 %19)
  %21 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %22 = call i32 @ocfs2_find_cpos_for_left_leaf(i32 %20, %struct.ocfs2_path* %21, i64* %8)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @mlog_errno(i32 %26)
  br label %57

28:                                               ; preds = %3
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %34 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %33)
  store %struct.ocfs2_path* %34, %struct.ocfs2_path** %9, align 8
  %35 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %36 = icmp ne %struct.ocfs2_path* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %57

42:                                               ; preds = %28
  %43 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %4, align 8
  %44 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @ocfs2_find_path(i32 %45, %struct.ocfs2_path* %46, i64 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %57

54:                                               ; preds = %42
  %55 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %56 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %6, align 8
  store %struct.ocfs2_path* %55, %struct.ocfs2_path** %56, align 8
  br label %57

57:                                               ; preds = %54, %51, %37, %25
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %62 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_find_cpos_for_left_leaf(i32, %struct.ocfs2_path*, i64*) #1

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
