; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/mimio/extr_mimio.c_mimio_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/mimio/extr_mimio.c_mimio_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mimio = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid arg: nbytes: %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MIMIO_TXWAIT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rslt: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"usb_submit_urb failure: %d.\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@MIMIO_TXDONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"tx timed out.\0A\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mimio*, i8*, i32)* @mimio_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mimio_tx(%struct.mimio* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mimio*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mimio* %0, %struct.mimio** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @wait, align 4
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @DECLARE_WAITQUEUE(i32 %11, i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @isvalidtxsize(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  %18 = load %struct.mimio*, %struct.mimio** %5, align 8
  %19 = getelementptr inbounds %struct.mimio, %struct.mimio* %18, i32 0, i32 3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %131

26:                                               ; preds = %3
  %27 = load %struct.mimio*, %struct.mimio** %5, align 8
  %28 = getelementptr inbounds %struct.mimio, %struct.mimio* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mimio*, %struct.mimio** %5, align 8
  %31 = getelementptr inbounds %struct.mimio, %struct.mimio* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.mimio*, %struct.mimio** %5, align 8
  %37 = getelementptr inbounds %struct.mimio, %struct.mimio* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 4
  %41 = load %struct.mimio*, %struct.mimio** %5, align 8
  %42 = getelementptr inbounds %struct.mimio, %struct.mimio* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @memcpy(i32 %46, i8* %47, i32 %48)
  %50 = load %struct.mimio*, %struct.mimio** %5, align 8
  %51 = getelementptr inbounds %struct.mimio, %struct.mimio* %50, i32 0, i32 4
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load i32, i32* @MIMIO_TXWAIT, align 4
  %55 = load %struct.mimio*, %struct.mimio** %5, align 8
  %56 = getelementptr inbounds %struct.mimio, %struct.mimio* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.mimio*, %struct.mimio** %5, align 8
  %58 = getelementptr inbounds %struct.mimio, %struct.mimio* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  %62 = call i32 @usb_submit_urb(%struct.TYPE_7__* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.mimio*, %struct.mimio** %5, align 8
  %64 = getelementptr inbounds %struct.mimio, %struct.mimio* %63, i32 0, i32 4
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.mimio*, %struct.mimio** %5, align 8
  %68 = getelementptr inbounds %struct.mimio, %struct.mimio* %67, i32 0, i32 3
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %26
  %76 = load %struct.mimio*, %struct.mimio** %5, align 8
  %77 = getelementptr inbounds %struct.mimio, %struct.mimio* %76, i32 0, i32 3
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %131

83:                                               ; preds = %26
  %84 = load i32, i32* @HZ, align 4
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %86 = call i32 @set_current_state(i32 %85)
  %87 = load %struct.mimio*, %struct.mimio** %5, align 8
  %88 = getelementptr inbounds %struct.mimio, %struct.mimio* %87, i32 0, i32 2
  %89 = call i32 @add_wait_queue(i32* %88, i32* @wait)
  br label %90

90:                                               ; preds = %102, %83
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.mimio*, %struct.mimio** %5, align 8
  %95 = getelementptr inbounds %struct.mimio, %struct.mimio* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @MIMIO_TXDONE, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br label %100

100:                                              ; preds = %93, %90
  %101 = phi i1 [ false, %90 ], [ %99, %93 ]
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @schedule_timeout(i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = call i32 (...) @rmb()
  br label %90

106:                                              ; preds = %100
  %107 = load %struct.mimio*, %struct.mimio** %5, align 8
  %108 = getelementptr inbounds %struct.mimio, %struct.mimio* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @MIMIO_TXDONE, align 4
  %111 = and i32 %109, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.mimio*, %struct.mimio** %5, align 8
  %115 = getelementptr inbounds %struct.mimio, %struct.mimio* %114, i32 0, i32 3
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %119

119:                                              ; preds = %113, %106
  %120 = load i32, i32* @TASK_RUNNING, align 4
  %121 = call i32 @set_current_state(i32 %120)
  %122 = load %struct.mimio*, %struct.mimio** %5, align 8
  %123 = getelementptr inbounds %struct.mimio, %struct.mimio* %122, i32 0, i32 2
  %124 = call i32 @remove_wait_queue(i32* %123, i32* @wait)
  %125 = load %struct.mimio*, %struct.mimio** %5, align 8
  %126 = getelementptr inbounds %struct.mimio, %struct.mimio* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = call i32 @usb_unlink_urb(%struct.TYPE_7__* %128)
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %119, %75, %17
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @isvalidtxsize(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @usb_unlink_urb(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
