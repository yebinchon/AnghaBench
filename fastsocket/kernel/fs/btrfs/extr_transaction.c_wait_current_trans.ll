; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_wait_current_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_wait_current_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.btrfs_transaction* }
%struct.btrfs_transaction = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_root*)* @wait_current_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_current_trans(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  %3 = alloca %struct.btrfs_transaction*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  %4 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %5 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %10 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %12, align 8
  store %struct.btrfs_transaction* %13, %struct.btrfs_transaction** %3, align 8
  %14 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %3, align 8
  %15 = icmp ne %struct.btrfs_transaction* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %1
  %17 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %3, align 8
  %18 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %3, align 8
  %23 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %22, i32 0, i32 1
  %24 = call i32 @atomic_inc(i32* %23)
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %26 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %3, align 8
  %36 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @wait_event(i32 %34, i32 %40)
  %42 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %3, align 8
  %43 = call i32 @put_transaction(%struct.btrfs_transaction* %42)
  br label %50

44:                                               ; preds = %16, %1
  %45 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %46 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  br label %50

50:                                               ; preds = %44, %21
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @put_transaction(%struct.btrfs_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
