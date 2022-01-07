; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_root-tree.c_btrfs_find_last_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_root-tree.c_btrfs_find_last_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_root_item = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }

@BTRFS_ROOT_ITEM_KEY = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_find_last_root(%struct.btrfs_root* %0, i64 %1, %struct.btrfs_root_item* %2, %struct.btrfs_key* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.btrfs_root_item*, align 8
  %9 = alloca %struct.btrfs_key*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca %struct.btrfs_key, align 8
  %12 = alloca %struct.btrfs_key, align 8
  %13 = alloca %struct.extent_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.btrfs_root_item* %2, %struct.btrfs_root_item** %8, align 8
  store %struct.btrfs_key* %3, %struct.btrfs_key** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load i64, i64* @BTRFS_ROOT_ITEM_KEY, align 8
  %19 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 2
  store i64 -1, i64* %20, align 8
  %21 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %21, %struct.btrfs_path** %10, align 8
  %22 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %23 = icmp ne %struct.btrfs_path* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %92

27:                                               ; preds = %4
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %29 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %30 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %28, %struct.btrfs_key* %11, %struct.btrfs_path* %29, i32 0, i32 0)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %88

34:                                               ; preds = %27
  %35 = load i32, i32* %14, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %40 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 1, i32* %14, align 4
  br label %88

46:                                               ; preds = %34
  %47 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %48 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %47, i32 0, i32 1
  %49 = load %struct.extent_buffer**, %struct.extent_buffer*** %48, align 8
  %50 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %49, i64 0
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %50, align 8
  store %struct.extent_buffer* %51, %struct.extent_buffer** %13, align 8
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %53 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %58, %struct.btrfs_key* %12, i32 %59)
  %61 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %70, label %65

65:                                               ; preds = %46
  %66 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @BTRFS_ROOT_ITEM_KEY, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %46
  store i32 1, i32* %14, align 4
  br label %88

71:                                               ; preds = %65
  %72 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %8, align 8
  %73 = icmp ne %struct.btrfs_root_item* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %76 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %8, align 8
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @btrfs_item_ptr_offset(%struct.extent_buffer* %77, i32 %78)
  %80 = call i32 @read_extent_buffer(%struct.extent_buffer* %75, %struct.btrfs_root_item* %76, i32 %79, i32 4)
  br label %81

81:                                               ; preds = %74, %71
  %82 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %83 = icmp ne %struct.btrfs_key* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %86 = call i32 @memcpy(%struct.btrfs_key* %85, %struct.btrfs_key* %12, i32 24)
  br label %87

87:                                               ; preds = %84, %81
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %87, %70, %45, %33
  %89 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %90 = call i32 @btrfs_free_path(%struct.btrfs_path* %89)
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %24
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, %struct.btrfs_root_item*, i32, i32) #1

declare dso_local i32 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @memcpy(%struct.btrfs_key*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
