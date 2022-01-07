; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-core.c_iio_allocate_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-core.c_iio_allocate_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_interrupt = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iio_interrupt* ()* @iio_allocate_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iio_interrupt* @iio_allocate_interrupt() #0 {
  %1 = alloca %struct.iio_interrupt*, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call %struct.iio_interrupt* @kmalloc(i32 8, i32 %2)
  store %struct.iio_interrupt* %3, %struct.iio_interrupt** %1, align 8
  %4 = load %struct.iio_interrupt*, %struct.iio_interrupt** %1, align 8
  %5 = icmp ne %struct.iio_interrupt* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load %struct.iio_interrupt*, %struct.iio_interrupt** %1, align 8
  %8 = getelementptr inbounds %struct.iio_interrupt, %struct.iio_interrupt* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.iio_interrupt*, %struct.iio_interrupt** %1, align 8
  %11 = getelementptr inbounds %struct.iio_interrupt, %struct.iio_interrupt* %10, i32 0, i32 0
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  br label %13

13:                                               ; preds = %6, %0
  %14 = load %struct.iio_interrupt*, %struct.iio_interrupt** %1, align 8
  ret %struct.iio_interrupt* %14
}

declare dso_local %struct.iio_interrupt* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
