; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txLinelock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txLinelock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linelock = type { i32, i64, i64, i32 }
%struct.tlock = type { i32 }

@tlckLINELOCK = common dso_local global i32 0, align 4
@TLOCKLONG = common dso_local global i32 0, align 4
@tlckDIRECTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.linelock* @txLinelock(%struct.linelock* %0) #0 {
  %2 = alloca %struct.linelock*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tlock*, align 8
  %5 = alloca %struct.linelock*, align 8
  store %struct.linelock* %0, %struct.linelock** %2, align 8
  %6 = call i32 (...) @TXN_LOCK()
  %7 = call i64 (...) @txLockAlloc()
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call %struct.tlock* @lid_to_tlock(i64 %8)
  store %struct.tlock* %9, %struct.tlock** %4, align 8
  %10 = call i32 (...) @TXN_UNLOCK()
  %11 = load %struct.tlock*, %struct.tlock** %4, align 8
  %12 = bitcast %struct.tlock* %11 to %struct.linelock*
  store %struct.linelock* %12, %struct.linelock** %5, align 8
  %13 = load %struct.linelock*, %struct.linelock** %5, align 8
  %14 = getelementptr inbounds %struct.linelock, %struct.linelock* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @tlckLINELOCK, align 4
  %16 = load %struct.linelock*, %struct.linelock** %5, align 8
  %17 = getelementptr inbounds %struct.linelock, %struct.linelock* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @TLOCKLONG, align 4
  %19 = load %struct.linelock*, %struct.linelock** %5, align 8
  %20 = getelementptr inbounds %struct.linelock, %struct.linelock* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.linelock*, %struct.linelock** %5, align 8
  %22 = getelementptr inbounds %struct.linelock, %struct.linelock* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.tlock*, %struct.tlock** %4, align 8
  %24 = getelementptr inbounds %struct.tlock, %struct.tlock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @tlckDIRECTORY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load i32, i32* @tlckDIRECTORY, align 4
  %31 = load %struct.linelock*, %struct.linelock** %5, align 8
  %32 = getelementptr inbounds %struct.linelock, %struct.linelock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %29, %1
  %36 = load %struct.linelock*, %struct.linelock** %2, align 8
  %37 = getelementptr inbounds %struct.linelock, %struct.linelock* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.linelock*, %struct.linelock** %5, align 8
  %40 = getelementptr inbounds %struct.linelock, %struct.linelock* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load %struct.linelock*, %struct.linelock** %2, align 8
  %43 = getelementptr inbounds %struct.linelock, %struct.linelock* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.linelock*, %struct.linelock** %5, align 8
  ret %struct.linelock* %44
}

declare dso_local i32 @TXN_LOCK(...) #1

declare dso_local i64 @txLockAlloc(...) #1

declare dso_local %struct.tlock* @lid_to_tlock(i64) #1

declare dso_local i32 @TXN_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
