; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_driver.c_adsp_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_driver.c_adsp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adsp_device = type { i32, i32, i32 }
%struct.adsp_event = type { i32, i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@ADSP_EVENT_MAX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"adsp_event: event too large (%d bytes)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"adsp_event: cannot allocate buffer\0A\00", align 1
@EVENT_MSG_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i64, void (i8*, i64)*)* @adsp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adsp_event(i8* %0, i32 %1, i64 %2, void (i8*, i64)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca void (i8*, i64)*, align 8
  %9 = alloca %struct.adsp_device*, align 8
  %10 = alloca %struct.adsp_event*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store void (i8*, i64)* %3, void (i8*, i64)** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.adsp_device*
  store %struct.adsp_device* %13, %struct.adsp_device** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @ADSP_EVENT_MAX_SIZE, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %82

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.adsp_event* @kmalloc(i32 48, i32 %21)
  store %struct.adsp_event* %22, %struct.adsp_event** %10, align 8
  %23 = load %struct.adsp_event*, %struct.adsp_event** %10, align 8
  %24 = icmp ne %struct.adsp_event* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %82

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @EVENT_MSG_ID, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load %struct.adsp_event*, %struct.adsp_event** %10, align 8
  %33 = getelementptr inbounds %struct.adsp_event, %struct.adsp_event* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.adsp_event*, %struct.adsp_event** %10, align 8
  %35 = getelementptr inbounds %struct.adsp_event, %struct.adsp_event* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.adsp_event*, %struct.adsp_event** %10, align 8
  %38 = getelementptr inbounds %struct.adsp_event, %struct.adsp_event* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.adsp_event*, %struct.adsp_event** %10, align 8
  %41 = getelementptr inbounds %struct.adsp_event, %struct.adsp_event* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load void (i8*, i64)*, void (i8*, i64)** %8, align 8
  %43 = load %struct.adsp_event*, %struct.adsp_event** %10, align 8
  %44 = getelementptr inbounds %struct.adsp_event, %struct.adsp_event* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %7, align 8
  call void %42(i8* %46, i64 %47)
  br label %65

48:                                               ; preds = %27
  %49 = load %struct.adsp_event*, %struct.adsp_event** %10, align 8
  %50 = getelementptr inbounds %struct.adsp_event, %struct.adsp_event* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.adsp_event*, %struct.adsp_event** %10, align 8
  %52 = getelementptr inbounds %struct.adsp_event, %struct.adsp_event* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.adsp_event*, %struct.adsp_event** %10, align 8
  %55 = getelementptr inbounds %struct.adsp_event, %struct.adsp_event* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.adsp_event*, %struct.adsp_event** %10, align 8
  %58 = getelementptr inbounds %struct.adsp_event, %struct.adsp_event* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load void (i8*, i64)*, void (i8*, i64)** %8, align 8
  %60 = load %struct.adsp_event*, %struct.adsp_event** %10, align 8
  %61 = getelementptr inbounds %struct.adsp_event, %struct.adsp_event* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %7, align 8
  call void %59(i8* %63, i64 %64)
  br label %65

65:                                               ; preds = %48, %31
  %66 = load %struct.adsp_device*, %struct.adsp_device** %9, align 8
  %67 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %66, i32 0, i32 1
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.adsp_event*, %struct.adsp_event** %10, align 8
  %71 = getelementptr inbounds %struct.adsp_event, %struct.adsp_event* %70, i32 0, i32 4
  %72 = load %struct.adsp_device*, %struct.adsp_device** %9, align 8
  %73 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %72, i32 0, i32 2
  %74 = call i32 @list_add_tail(i32* %71, i32* %73)
  %75 = load %struct.adsp_device*, %struct.adsp_device** %9, align 8
  %76 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %75, i32 0, i32 1
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.adsp_device*, %struct.adsp_device** %9, align 8
  %80 = getelementptr inbounds %struct.adsp_device, %struct.adsp_device* %79, i32 0, i32 0
  %81 = call i32 @wake_up(i32* %80)
  br label %82

82:                                               ; preds = %65, %25, %17
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.adsp_event* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
