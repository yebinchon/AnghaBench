; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_previous_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_previous_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i64*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_previous_item(%struct.btrfs_root* %0, %struct.btrfs_path* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_key, align 8
  %11 = alloca %struct.extent_buffer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  br label %14

14:                                               ; preds = %4, %95
  %15 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %16 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %23 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %22)
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %25 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %26 = call i32 @btrfs_prev_leaf(%struct.btrfs_root* %24, %struct.btrfs_path* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %5, align 4
  br label %97

31:                                               ; preds = %21
  br label %39

32:                                               ; preds = %14
  %33 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %34 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %32, %31
  %40 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %41 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %40, i32 0, i32 1
  %42 = load %struct.extent_buffer**, %struct.extent_buffer*** %41, align 8
  %43 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %42, i64 0
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %43, align 8
  store %struct.extent_buffer* %44, %struct.extent_buffer** %11, align 8
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %46 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %97

50:                                               ; preds = %39
  %51 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %52 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %60 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %58, %50
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %67 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %68 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %66, %struct.btrfs_key* %10, i64 %71)
  %73 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %96

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %97

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %96

95:                                               ; preds = %89, %84
  br label %14

96:                                               ; preds = %94, %77
  store i32 1, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %83, %49, %29
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_prev_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
