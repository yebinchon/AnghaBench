; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txBegin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txBegin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.super_block = type { i32 }
%struct.tblock = type { i64, i32, i32, i32, i32, i64, %struct.super_block* }
%struct.jfs_log = type { i32, i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.jfs_log* }

@.str = private unnamed_addr constant [21 x i8] c"txBegin: flag = 0x%x\00", align 1
@TxStat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@COMMIT_FORCE = common dso_local global i32 0, align 4
@log_SYNCBARRIER = common dso_local global i32 0, align 4
@log_QUIESCE = common dso_local global i32 0, align 4
@TxAnchor = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@TxLockVHWM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"txBegin: waiting for free tid\00", align 1
@stattx = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"txBegin: returning tid = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @txBegin(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tblock*, align 8
  %7 = alloca %struct.jfs_log*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call %struct.TYPE_8__* @JFS_SBI(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.jfs_log*, %struct.jfs_log** %12, align 8
  store %struct.jfs_log* %13, %struct.jfs_log** %7, align 8
  %14 = call i32 (...) @TXN_LOCK()
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TxStat, i32 0, i32 3), align 4
  %16 = call i32 @INCREMENT(i32 %15)
  br label %17

17:                                               ; preds = %73, %56, %48, %34, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @COMMIT_FORCE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @log_SYNCBARRIER, align 4
  %24 = load %struct.jfs_log*, %struct.jfs_log** %7, align 8
  %25 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %24, i32 0, i32 3
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @log_QUIESCE, align 4
  %30 = load %struct.jfs_log*, %struct.jfs_log** %7, align 8
  %31 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %30, i32 0, i32 3
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28, %22
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TxStat, i32 0, i32 2), align 4
  %36 = call i32 @INCREMENT(i32 %35)
  %37 = load %struct.jfs_log*, %struct.jfs_log** %7, align 8
  %38 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %37, i32 0, i32 2
  %39 = call i32 @TXN_SLEEP(i32* %38)
  br label %17

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %17
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @TxAnchor, i32 0, i32 0), align 8
  %46 = load i64, i64* @TxLockVHWM, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TxStat, i32 0, i32 1), align 4
  %50 = call i32 @INCREMENT(i32 %49)
  %51 = call i32 @TXN_SLEEP(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @TxAnchor, i32 0, i32 3))
  br label %17

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @TxAnchor, i32 0, i32 1), align 8
  store i32 %54, i32* %5, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TxStat, i32 0, i32 0), align 4
  %59 = call i32 @INCREMENT(i32 %58)
  %60 = call i32 @TXN_SLEEP(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @TxAnchor, i32 0, i32 2))
  br label %17

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  %63 = call %struct.tblock* @tid_to_tblock(i32 %62)
  store %struct.tblock* %63, %struct.tblock** %6, align 8
  %64 = load %struct.tblock*, %struct.tblock** %6, align 8
  %65 = getelementptr inbounds %struct.tblock, %struct.tblock* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @COMMIT_FORCE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TxStat, i32 0, i32 0), align 4
  %76 = call i32 @INCREMENT(i32 %75)
  %77 = call i32 @TXN_SLEEP(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @TxAnchor, i32 0, i32 2))
  br label %17

78:                                               ; preds = %68, %61
  %79 = load %struct.tblock*, %struct.tblock** %6, align 8
  %80 = getelementptr inbounds %struct.tblock, %struct.tblock* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @TxAnchor, i32 0, i32 1), align 8
  %83 = load %struct.tblock*, %struct.tblock** %6, align 8
  %84 = getelementptr inbounds %struct.tblock, %struct.tblock* %83, i32 0, i32 4
  store i32 0, i32* %84, align 4
  %85 = load %struct.tblock*, %struct.tblock** %6, align 8
  %86 = getelementptr inbounds %struct.tblock, %struct.tblock* %85, i32 0, i32 3
  store i32 0, i32* %86, align 8
  %87 = load %struct.tblock*, %struct.tblock** %6, align 8
  %88 = getelementptr inbounds %struct.tblock, %struct.tblock* %87, i32 0, i32 2
  store i32 0, i32* %88, align 4
  %89 = load %struct.tblock*, %struct.tblock** %6, align 8
  %90 = getelementptr inbounds %struct.tblock, %struct.tblock* %89, i32 0, i32 1
  store i32 0, i32* %90, align 8
  %91 = load %struct.tblock*, %struct.tblock** %6, align 8
  %92 = getelementptr inbounds %struct.tblock, %struct.tblock* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.super_block*, %struct.super_block** %3, align 8
  %94 = load %struct.tblock*, %struct.tblock** %6, align 8
  %95 = getelementptr inbounds %struct.tblock, %struct.tblock* %94, i32 0, i32 6
  store %struct.super_block* %93, %struct.super_block** %95, align 8
  %96 = load %struct.jfs_log*, %struct.jfs_log** %7, align 8
  %97 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = load %struct.jfs_log*, %struct.jfs_log** %7, align 8
  %101 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.tblock*, %struct.tblock** %6, align 8
  %104 = getelementptr inbounds %struct.tblock, %struct.tblock* %103, i32 0, i32 5
  store i64 %102, i64* %104, align 8
  %105 = load %struct.jfs_log*, %struct.jfs_log** %7, align 8
  %106 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stattx, i32 0, i32 1), align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @HIGHWATERMARK(i32 %109, i32 %110)
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stattx, i32 0, i32 0), align 4
  %113 = call i32 @INCREMENT(i32 %112)
  %114 = call i32 (...) @TXN_UNLOCK()
  %115 = load i32, i32* %5, align 4
  %116 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @jfs_info(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @TXN_LOCK(...) #1

declare dso_local i32 @INCREMENT(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @TXN_SLEEP(i32*) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @HIGHWATERMARK(i32, i32) #1

declare dso_local i32 @TXN_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
