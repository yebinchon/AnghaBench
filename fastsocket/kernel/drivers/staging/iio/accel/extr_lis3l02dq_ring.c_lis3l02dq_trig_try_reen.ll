; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c_lis3l02dq_trig_try_reen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c_lis3l02dq_trig_try_reen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { %struct.lis3l02dq_state* }
%struct.lis3l02dq_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*)* @lis3l02dq_trig_try_reen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3l02dq_trig_try_reen(%struct.iio_trigger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca %struct.lis3l02dq_state*, align 8
  store %struct.iio_trigger* %0, %struct.iio_trigger** %3, align 8
  %5 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %6 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %5, i32 0, i32 0
  %7 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %6, align 8
  store %struct.lis3l02dq_state* %7, %struct.lis3l02dq_state** %4, align 8
  %8 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %9 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @enable_irq(i32 %12)
  %14 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %15 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @irq_to_gpio(i32 %18)
  %20 = call i64 @gpio_get_value(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %1
  %23 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %24 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %29 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @disable_irq_nosync(i32 %32)
  %34 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %35 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %40 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @enable_irq(i32 %43)
  store i32 0, i32* %2, align 4
  br label %50

45:                                               ; preds = %27
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %48, %1
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %45, %38
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i64 @gpio_get_value(i32) #1

declare dso_local i32 @irq_to_gpio(i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
