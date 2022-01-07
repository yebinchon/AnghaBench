; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txLazyUnlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txLazyUnlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.tblock = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@TxAnchor = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@IN_LAZYCOMMIT = common dso_local global i32 0, align 4
@jfs_commit_thread_waking = common dso_local global i32 0, align 4
@jfs_commit_thread_wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @txLazyUnlock(%struct.tblock* %0) #0 {
  %2 = alloca %struct.tblock*, align 8
  %3 = alloca i64, align 8
  store %struct.tblock* %0, %struct.tblock** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @LAZY_LOCK(i64 %4)
  %6 = load %struct.tblock*, %struct.tblock** %2, align 8
  %7 = getelementptr inbounds %struct.tblock, %struct.tblock* %6, i32 0, i32 1
  %8 = call i32 @list_add_tail(i32* %7, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @TxAnchor, i32 0, i32 0))
  %9 = load %struct.tblock*, %struct.tblock** %2, align 8
  %10 = getelementptr inbounds %struct.tblock, %struct.tblock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_4__* @JFS_SBI(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IN_LAZYCOMMIT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @jfs_commit_thread_waking, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  store i32 1, i32* @jfs_commit_thread_waking, align 4
  %22 = call i32 @wake_up(i32* @jfs_commit_thread_wait)
  br label %23

23:                                               ; preds = %21, %18, %1
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @LAZY_UNLOCK(i64 %24)
  ret void
}

declare dso_local i32 @LAZY_LOCK(i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @JFS_SBI(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @LAZY_UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
