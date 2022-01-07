; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-trigger.c_iio_trigger_notify_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-trigger.c_iio_trigger_notify_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i64, i64, i64 (%struct.iio_trigger*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iio_trigger_notify_done(%struct.iio_trigger* %0) #0 {
  %2 = alloca %struct.iio_trigger*, align 8
  store %struct.iio_trigger* %0, %struct.iio_trigger** %2, align 8
  %3 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %4 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, -1
  store i64 %6, i64* %4, align 8
  %7 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %8 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %13 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %12, i32 0, i32 2
  %14 = load i64 (%struct.iio_trigger*)*, i64 (%struct.iio_trigger*)** %13, align 8
  %15 = icmp ne i64 (%struct.iio_trigger*)* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %18 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %17, i32 0, i32 2
  %19 = load i64 (%struct.iio_trigger*)*, i64 (%struct.iio_trigger*)** %18, align 8
  %20 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %21 = call i64 %19(%struct.iio_trigger* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %25 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %27 = call i32 @iio_trigger_poll(%struct.iio_trigger* %26)
  br label %28

28:                                               ; preds = %23, %16
  br label %29

29:                                               ; preds = %28, %11, %1
  ret void
}

declare dso_local i32 @iio_trigger_poll(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
