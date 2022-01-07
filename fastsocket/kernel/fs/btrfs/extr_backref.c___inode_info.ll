; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c___inode_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c___inode_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i64*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*)* @__inode_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__inode_info(i8* %0, i8* %1, i64 %2, %struct.btrfs_root* %3, %struct.btrfs_path* %4, %struct.btrfs_key* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca %struct.btrfs_path*, align 8
  %13 = alloca %struct.btrfs_key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.btrfs_key, align 8
  %16 = alloca %struct.extent_buffer*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.btrfs_root* %3, %struct.btrfs_root** %11, align 8
  store %struct.btrfs_path* %4, %struct.btrfs_path** %12, align 8
  store %struct.btrfs_key* %5, %struct.btrfs_key** %13, align 8
  %17 = load i64, i64* %10, align 8
  %18 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 1
  store i64 %20, i64* %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %25 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %26 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %24, %struct.btrfs_key* %15, %struct.btrfs_path* %25, i32 0, i32 0)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %7, align 4
  br label %86

31:                                               ; preds = %6
  %32 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %33 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %32, i32 0, i32 1
  %34 = load %struct.extent_buffer**, %struct.extent_buffer*** %33, align 8
  %35 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %34, i64 0
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %35, align 8
  store %struct.extent_buffer* %36, %struct.extent_buffer** %16, align 8
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %31
  %40 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %41 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %46 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %45)
  %47 = icmp sge i64 %44, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %39
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %50 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %51 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %49, %struct.btrfs_path* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %7, align 4
  br label %86

56:                                               ; preds = %48
  %57 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %58 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %57, i32 0, i32 1
  %59 = load %struct.extent_buffer**, %struct.extent_buffer*** %58, align 8
  %60 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %59, i64 0
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %60, align 8
  store %struct.extent_buffer* %61, %struct.extent_buffer** %16, align 8
  br label %62

62:                                               ; preds = %56, %39, %31
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %64 = load %struct.btrfs_key*, %struct.btrfs_key** %13, align 8
  %65 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %66 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %63, %struct.btrfs_key* %64, i64 %69)
  %71 = load %struct.btrfs_key*, %struct.btrfs_key** %13, align 8
  %72 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %73, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %62
  %78 = load %struct.btrfs_key*, %struct.btrfs_key** %13, align 8
  %79 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77, %62
  store i32 1, i32* %7, align 4
  br label %86

85:                                               ; preds = %77
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %84, %54, %29
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
