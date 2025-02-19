; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c_lis3l02dq_remove_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c_lis3l02dq_remove_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.lis3l02dq_state* }
%struct.lis3l02dq_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lis3l02dq_remove_trigger(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.lis3l02dq_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %4 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %5 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %4, i32 0, i32 0
  %6 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %5, align 8
  store %struct.lis3l02dq_state* %6, %struct.lis3l02dq_state** %3, align 8
  %7 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %3, align 8
  %8 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = call i32 @iio_trigger_unregister(%struct.TYPE_3__* %9)
  %11 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %3, align 8
  %12 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @kfree(i32 %15)
  %17 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %3, align 8
  %18 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @iio_free_trigger(%struct.TYPE_3__* %19)
  ret void
}

declare dso_local i32 @iio_trigger_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iio_free_trigger(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
