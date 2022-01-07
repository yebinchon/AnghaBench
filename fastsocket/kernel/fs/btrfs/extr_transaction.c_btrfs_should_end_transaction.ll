; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_btrfs_should_end_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_btrfs_should_end_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32, %struct.btrfs_block_rsv*, %struct.btrfs_transaction* }
%struct.btrfs_block_rsv = type { i32 }
%struct.btrfs_transaction = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_root = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_should_end_transaction(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_transaction*, align 8
  %7 = alloca %struct.btrfs_block_rsv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  %10 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %10, i32 0, i32 2
  %12 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %11, align 8
  store %struct.btrfs_transaction* %12, %struct.btrfs_transaction** %6, align 8
  %13 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %13, i32 0, i32 1
  %15 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %14, align 8
  store %struct.btrfs_block_rsv* %15, %struct.btrfs_block_rsv** %7, align 8
  %16 = call i32 (...) @smp_mb()
  %17 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %23 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %2
  store i32 1, i32* %3, align 4
  br label %55

28:                                               ; preds = %21
  %29 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %29, i32 0, i32 1
  store %struct.btrfs_block_rsv* null, %struct.btrfs_block_rsv** %30, align 8
  %31 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %32 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %8, align 4
  %34 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %35 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %28
  %39 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @btrfs_run_delayed_refs(%struct.btrfs_trans_handle* %39, %struct.btrfs_root* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %55

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %28
  %49 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %50 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %51 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %50, i32 0, i32 1
  store %struct.btrfs_block_rsv* %49, %struct.btrfs_block_rsv** %51, align 8
  %52 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %54 = call i32 @should_end_transaction(%struct.btrfs_trans_handle* %52, %struct.btrfs_root* %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %48, %45, %27
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @btrfs_run_delayed_refs(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @should_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
