; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txLockAlloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txLockAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@TxStat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@TxAnchor = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@TxLock = common dso_local global %struct.TYPE_7__* null, align 8
@stattx = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@TxLockHWM = common dso_local global i64 0, align 8
@jfs_tlocks_low = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"txLockAlloc tlocks low\00", align 1
@jfsSyncThread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @txLockAlloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @txLockAlloc() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TxStat, i32 0, i32 1), align 4
  %3 = call i32 @INCREMENT(i32 %2)
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @TxAnchor, i32 0, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TxStat, i32 0, i32 0), align 4
  %8 = call i32 @INCREMENT(i32 %7)
  br label %9

9:                                                ; preds = %6, %0
  br label %10

10:                                               ; preds = %14, %9
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @TxAnchor, i32 0, i32 0), align 8
  store i64 %11, i64* %1, align 8
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @TXN_SLEEP(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @TxAnchor, i32 0, i32 2))
  br label %10

16:                                               ; preds = %10
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TxLock, align 8
  %18 = load i64, i64* %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @TxAnchor, i32 0, i32 0), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stattx, i32 0, i32 0), align 4
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @HIGHWATERMARK(i32 %22, i64 %23)
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @TxAnchor, i32 0, i32 1), align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @TxAnchor, i32 0, i32 1), align 8
  %27 = load i64, i64* @TxLockHWM, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %16
  %30 = load i32, i32* @jfs_tlocks_low, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = call i32 @jfs_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @jfs_tlocks_low, align 4
  %34 = load i32, i32* @jfsSyncThread, align 4
  %35 = call i32 @wake_up_process(i32 %34)
  br label %36

36:                                               ; preds = %32, %29, %16
  %37 = load i64, i64* %1, align 8
  ret i64 %37
}

declare dso_local i32 @INCREMENT(i32) #1

declare dso_local i32 @TXN_SLEEP(i32*) #1

declare dso_local i32 @HIGHWATERMARK(i32, i64) #1

declare dso_local i32 @jfs_info(i8*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
