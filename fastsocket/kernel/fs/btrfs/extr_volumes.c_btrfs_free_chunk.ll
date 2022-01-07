; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_free_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_free_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_root* }
%struct.btrfs_path = type { i32 }
%struct.btrfs_key = type { i32, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_CHUNK_ITEM_KEY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed lookup while freeing chunk.\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to delete chunk item.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, i8*, i8*, i8*)* @btrfs_free_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_free_chunk(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_path*, align 8
  %14 = alloca %struct.btrfs_key, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  store %struct.btrfs_root* %19, %struct.btrfs_root** %8, align 8
  %20 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %20, %struct.btrfs_path** %13, align 8
  %21 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %22 = icmp ne %struct.btrfs_path* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %71

26:                                               ; preds = %5
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* @BTRFS_CHUNK_ITEM_KEY, align 4
  %32 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %35 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %36 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %33, %struct.btrfs_root* %34, %struct.btrfs_key* %14, %struct.btrfs_path* %35, i32 -1, i32 1)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %67

40:                                               ; preds = %26
  %41 = load i32, i32* %12, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %45 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i32 @btrfs_error(%struct.TYPE_2__* %46, i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %67

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %55 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %56 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %57 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %54, %struct.btrfs_root* %55, %struct.btrfs_path* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %62 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @btrfs_error(%struct.TYPE_2__* %63, i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %60, %53
  br label %67

67:                                               ; preds = %66, %43, %39
  %68 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %69 = call i32 @btrfs_free_path(%struct.btrfs_path* %68)
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %23
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_error(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
