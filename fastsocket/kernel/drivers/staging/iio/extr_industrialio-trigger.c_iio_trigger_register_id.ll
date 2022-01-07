; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-trigger.c_iio_trigger_register_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-trigger.c_iio_trigger_register_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }

@iio_trigger_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iio_trigger_idr_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MAX_ID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*)* @iio_trigger_register_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_trigger_register_id(%struct.iio_trigger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i64 @idr_pre_get(i32* @iio_trigger_idr, i32 %6)
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %47

15:                                               ; preds = %5
  %16 = call i32 @spin_lock(i32* @iio_trigger_idr_lock)
  %17 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %18 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %17, i32 0, i32 0
  %19 = call i32 @idr_get_new(i32* @iio_trigger_idr, i32* null, i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = call i32 @spin_unlock(i32* @iio_trigger_idr_lock)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %5

29:                                               ; preds = %15
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %38 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MAX_ID_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %43 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %36, %29
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_get_new(i32*, i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
