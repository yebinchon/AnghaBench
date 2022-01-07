; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_update_cowonly_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_update_cowonly_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.btrfs_root*, %struct.btrfs_root* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*)* @update_cowonly_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_cowonly_root(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  store %struct.btrfs_root* %14, %struct.btrfs_root** %9, align 8
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 1
  %17 = call i64 @btrfs_root_used(i32* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %20 = call i32 @btrfs_write_dirty_block_groups(%struct.btrfs_trans_handle* %18, %struct.btrfs_root* %19)
  br label %21

21:                                               ; preds = %2, %68
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 1
  %24 = call i64 @btrfs_root_bytenr(i32* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %27 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %25, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %35 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %34, i32 0, i32 1
  %36 = call i64 @btrfs_root_used(i32* %35)
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %69

39:                                               ; preds = %32, %21
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %41 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %40, i32 0, i32 1
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %43 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i32 @btrfs_set_root_node(i32* %41, %struct.TYPE_4__* %44)
  %46 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %49 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %48, i32 0, i32 2
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %51 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %50, i32 0, i32 1
  %52 = call i32 @btrfs_update_root(%struct.btrfs_trans_handle* %46, %struct.btrfs_root* %47, i32* %49, i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %39
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %81

57:                                               ; preds = %39
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %59 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %58, i32 0, i32 1
  %60 = call i64 @btrfs_root_used(i32* %59)
  store i64 %60, i64* %8, align 8
  %61 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %62 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %63 = call i32 @btrfs_write_dirty_block_groups(%struct.btrfs_trans_handle* %61, %struct.btrfs_root* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %81

68:                                               ; preds = %57
  br label %21

69:                                               ; preds = %38
  %70 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %72 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load %struct.btrfs_root*, %struct.btrfs_root** %74, align 8
  %76 = icmp ne %struct.btrfs_root* %70, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %79 = call i32 @switch_commit_root(%struct.btrfs_root* %78)
  br label %80

80:                                               ; preds = %77, %69
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %66, %55
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @btrfs_root_used(i32*) #1

declare dso_local i32 @btrfs_write_dirty_block_groups(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i64 @btrfs_root_bytenr(i32*) #1

declare dso_local i32 @btrfs_set_root_node(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @btrfs_update_root(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32*, i32*) #1

declare dso_local i32 @switch_commit_root(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
