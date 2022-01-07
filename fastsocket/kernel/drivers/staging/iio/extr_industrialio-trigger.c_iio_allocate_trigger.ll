; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-trigger.c_iio_allocate_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-trigger.c_iio_allocate_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@iio_trig_type = common dso_local global i32 0, align 4
@iio_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iio_trigger* @iio_allocate_trigger() #0 {
  %1 = alloca %struct.iio_trigger*, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call %struct.iio_trigger* @kzalloc(i32 32, i32 %2)
  store %struct.iio_trigger* %3, %struct.iio_trigger** %1, align 8
  %4 = load %struct.iio_trigger*, %struct.iio_trigger** %1, align 8
  %5 = icmp ne %struct.iio_trigger* %4, null
  br i1 %5, label %6, label %31

6:                                                ; preds = %0
  %7 = load %struct.iio_trigger*, %struct.iio_trigger** %1, align 8
  %8 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32* @iio_trig_type, i32** %9, align 8
  %10 = load %struct.iio_trigger*, %struct.iio_trigger** %1, align 8
  %11 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32* @iio_class, i32** %12, align 8
  %13 = load %struct.iio_trigger*, %struct.iio_trigger** %1, align 8
  %14 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %13, i32 0, i32 3
  %15 = call i32 @device_initialize(%struct.TYPE_3__* %14)
  %16 = load %struct.iio_trigger*, %struct.iio_trigger** %1, align 8
  %17 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %16, i32 0, i32 3
  %18 = load %struct.iio_trigger*, %struct.iio_trigger** %1, align 8
  %19 = bitcast %struct.iio_trigger* %18 to i8*
  %20 = call i32 @dev_set_drvdata(%struct.TYPE_3__* %17, i8* %19)
  %21 = load %struct.iio_trigger*, %struct.iio_trigger** %1, align 8
  %22 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %21, i32 0, i32 2
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.iio_trigger*, %struct.iio_trigger** %1, align 8
  %25 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %24, i32 0, i32 1
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.iio_trigger*, %struct.iio_trigger** %1, align 8
  %28 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %27, i32 0, i32 0
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = call i32 (...) @iio_get()
  br label %31

31:                                               ; preds = %6, %0
  %32 = load %struct.iio_trigger*, %struct.iio_trigger** %1, align 8
  ret %struct.iio_trigger* %32
}

declare dso_local %struct.iio_trigger* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @iio_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
