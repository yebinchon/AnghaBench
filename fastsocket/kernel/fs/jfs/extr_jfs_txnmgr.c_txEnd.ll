; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txEnd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.tblock = type { i32, i64, i32, i32 }
%struct.jfs_log = type { i64, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.jfs_log* }

@.str = private unnamed_addr constant [16 x i8] c"txEnd: tid = %d\00", align 1
@tblkGC_LAZY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"txEnd called w/lazy tid: %d, tblk = 0x%p\00", align 1
@tblkGC_UNLOCKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"txEnd: tid: %d, tblk = 0x%p\00", align 1
@TxAnchor = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@log_FLUSH = common dso_local global i32 0, align 4
@log_SYNCBARRIER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"log barrier off: 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @txEnd(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tblock*, align 8
  %4 = alloca %struct.jfs_log*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call %struct.tblock* @tid_to_tblock(i64 %5)
  store %struct.tblock* %6, %struct.tblock** %3, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i32 (i8*, i64, ...) @jfs_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = call i32 (...) @TXN_LOCK()
  %10 = load %struct.tblock*, %struct.tblock** %3, align 8
  %11 = getelementptr inbounds %struct.tblock, %struct.tblock* %10, i32 0, i32 3
  %12 = call i32 @TXN_WAKEUP(i32* %11)
  %13 = load %struct.tblock*, %struct.tblock** %3, align 8
  %14 = getelementptr inbounds %struct.tblock, %struct.tblock* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_4__* @JFS_SBI(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.jfs_log*, %struct.jfs_log** %17, align 8
  store %struct.jfs_log* %18, %struct.jfs_log** %4, align 8
  %19 = load %struct.tblock*, %struct.tblock** %3, align 8
  %20 = getelementptr inbounds %struct.tblock, %struct.tblock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @tblkGC_LAZY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %1
  %26 = load i64, i64* %2, align 8
  %27 = load %struct.tblock*, %struct.tblock** %3, align 8
  %28 = call i32 (i8*, i64, ...) @jfs_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %26, %struct.tblock* %27)
  %29 = call i32 (...) @TXN_UNLOCK()
  %30 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %31 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %30, i32 0, i32 4
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load i32, i32* @tblkGC_UNLOCKED, align 4
  %34 = load %struct.tblock*, %struct.tblock** %3, align 8
  %35 = getelementptr inbounds %struct.tblock, %struct.tblock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %39 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %38, i32 0, i32 4
  %40 = call i32 @spin_unlock_irq(i32* %39)
  br label %90

41:                                               ; preds = %1
  %42 = load i64, i64* %2, align 8
  %43 = load %struct.tblock*, %struct.tblock** %3, align 8
  %44 = call i32 (i8*, i64, ...) @jfs_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %42, %struct.tblock* %43)
  %45 = load %struct.tblock*, %struct.tblock** %3, align 8
  %46 = getelementptr inbounds %struct.tblock, %struct.tblock* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @TxAnchor, i32 0, i32 0), align 8
  %52 = load %struct.tblock*, %struct.tblock** %3, align 8
  %53 = getelementptr inbounds %struct.tblock, %struct.tblock* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %2, align 8
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @TxAnchor, i32 0, i32 0), align 8
  %55 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %56 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %56, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %41
  %61 = load i32, i32* @log_FLUSH, align 4
  %62 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %63 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %62, i32 0, i32 3
  %64 = call i32 @clear_bit(i32 %61, i32* %63)
  %65 = load i32, i32* @log_SYNCBARRIER, align 4
  %66 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %67 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %66, i32 0, i32 3
  %68 = call i64 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %60
  %71 = call i32 (...) @TXN_UNLOCK()
  %72 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %73 = call i32 @jfs_syncpt(%struct.jfs_log* %72, i32 1)
  %74 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %75 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i8*, i64, ...) @jfs_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* @log_SYNCBARRIER, align 4
  %79 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %80 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %79, i32 0, i32 3
  %81 = call i32 @clear_bit(i32 %78, i32* %80)
  %82 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %83 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %82, i32 0, i32 2
  %84 = call i32 @TXN_WAKEUP(i32* %83)
  br label %88

85:                                               ; preds = %60
  br label %86

86:                                               ; preds = %85, %41
  %87 = call i32 (...) @TXN_UNLOCK()
  br label %88

88:                                               ; preds = %86, %70
  %89 = call i32 @TXN_WAKEUP(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @TxAnchor, i32 0, i32 1))
  br label %90

90:                                               ; preds = %88, %25
  ret void
}

declare dso_local %struct.tblock* @tid_to_tblock(i64) #1

declare dso_local i32 @jfs_info(i8*, i64, ...) #1

declare dso_local i32 @TXN_LOCK(...) #1

declare dso_local i32 @TXN_WAKEUP(i32*) #1

declare dso_local %struct.TYPE_4__* @JFS_SBI(i32) #1

declare dso_local i32 @TXN_UNLOCK(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @jfs_syncpt(%struct.jfs_log*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
