; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_set_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_timeout = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.timespec = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.aio_timeout*, %struct.timespec*)* @set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_timeout(i64 %0, %struct.aio_timeout* %1, %struct.timespec* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.aio_timeout*, align 8
  %6 = alloca %struct.timespec*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.aio_timeout* %1, %struct.aio_timeout** %5, align 8
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.timespec*, %struct.timespec** %6, align 8
  %9 = call i64 @timespec_to_jiffies(%struct.timespec* %8)
  %10 = add nsw i64 %7, %9
  %11 = load %struct.aio_timeout*, %struct.aio_timeout** %5, align 8
  %12 = getelementptr inbounds %struct.aio_timeout, %struct.aio_timeout* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 %10, i64* %13, align 8
  %14 = load %struct.aio_timeout*, %struct.aio_timeout** %5, align 8
  %15 = getelementptr inbounds %struct.aio_timeout, %struct.aio_timeout* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @jiffies, align 4
  %19 = call i64 @time_after(i64 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.aio_timeout*, %struct.aio_timeout** %5, align 8
  %23 = getelementptr inbounds %struct.aio_timeout, %struct.aio_timeout* %22, i32 0, i32 1
  %24 = call i32 @add_timer(%struct.TYPE_2__* %23)
  br label %28

25:                                               ; preds = %3
  %26 = load %struct.aio_timeout*, %struct.aio_timeout** %5, align 8
  %27 = getelementptr inbounds %struct.aio_timeout, %struct.aio_timeout* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %21
  ret void
}

declare dso_local i64 @timespec_to_jiffies(%struct.timespec*) #1

declare dso_local i64 @time_after(i64, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
