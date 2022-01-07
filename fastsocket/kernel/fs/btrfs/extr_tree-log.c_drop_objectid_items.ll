; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_drop_objectid_items.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_drop_objectid_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i64*, i32* }
%struct.btrfs_key = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i64, i32)* @drop_objectid_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drop_objectid_items(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_key, align 8
  %13 = alloca %struct.btrfs_key, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* %9, align 8
  %15 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load i32, i32* %10, align 4
  %17 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  store i64 -1, i64* %18, align 8
  br label %19

19:                                               ; preds = %5, %70
  %20 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %22 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %23 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %20, %struct.btrfs_root* %21, %struct.btrfs_key* %12, %struct.btrfs_path* %22, i32 -1, i32 1)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %73

31:                                               ; preds = %19
  %32 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %33 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %73

39:                                               ; preds = %31
  %40 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %41 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %47 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %52 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @btrfs_item_key_to_cpu(i32 %50, %struct.btrfs_key* %13, i64 %55)
  %57 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %39
  br label %73

62:                                               ; preds = %39
  %63 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %65 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %66 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %63, %struct.btrfs_root* %64, %struct.btrfs_path* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %73

70:                                               ; preds = %62
  %71 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %72 = call i32 @btrfs_release_path(%struct.btrfs_path* %71)
  br label %19

73:                                               ; preds = %69, %61, %38, %30
  %74 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %75 = call i32 @btrfs_release_path(%struct.btrfs_path* %74)
  %76 = load i32, i32* %11, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %78, %73
  %80 = load i32, i32* %11, align 4
  ret i32 %80
}

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i64) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
