; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_prev_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_prev_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32* }
%struct.btrfs_key = type { i64, i64, i64 }
%struct.btrfs_disk_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_prev_leaf(%struct.btrfs_root* %0, %struct.btrfs_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca %struct.btrfs_key, align 8
  %7 = alloca %struct.btrfs_disk_key, align 4
  %8 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %5, align 8
  %9 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %10 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @btrfs_item_key_to_cpu(i32 %13, %struct.btrfs_key* %6, i32 0)
  %15 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  br label %41

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  br label %40

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  br label %39

38:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %63

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40, %18
  %42 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %43 = call i32 @btrfs_release_path(%struct.btrfs_path* %42)
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %45 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %46 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %44, %struct.btrfs_key* %6, %struct.btrfs_path* %45, i32 0, i32 0)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %63

51:                                               ; preds = %41
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %53 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @btrfs_item_key(i32 %56, %struct.btrfs_disk_key* %7, i32 0)
  %58 = call i32 @comp_keys(%struct.btrfs_disk_key* %7, %struct.btrfs_key* %6)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %63

62:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %61, %49, %38
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_item_key(i32, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @comp_keys(%struct.btrfs_disk_key*, %struct.btrfs_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
