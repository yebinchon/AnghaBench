; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c___unlink_end_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c___unlink_end_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32*, i32 }
%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_trans_handle*, %struct.btrfs_root*)* @__unlink_end_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__unlink_end_trans(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %4, align 8
  %5 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = icmp eq i32* %7, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %2
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %15 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %16 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %19 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @btrfs_block_rsv_release(%struct.btrfs_root* %14, i32* %17, i32 %20)
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %27 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %29 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %38 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %13, %2
  %42 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %44 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %42, %struct.btrfs_root* %43)
  ret void
}

declare dso_local i32 @btrfs_block_rsv_release(%struct.btrfs_root*, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
