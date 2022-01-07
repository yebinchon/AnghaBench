; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/light/extr_..iio.h_iio_init_work_cont.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/light/extr_..iio.h_iio_init_work_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_work_cont = type { i32, i32, i8*, i32, i32 }
%struct.work_struct = type opaque
%struct.work_struct.0 = type opaque
%struct.work_struct.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_work_cont*, void (%struct.work_struct*)*, void (%struct.work_struct.0*)*, i32, i32, i8*)* @iio_init_work_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iio_init_work_cont(%struct.iio_work_cont* %0, void (%struct.work_struct*)* %1, void (%struct.work_struct.0*)* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.iio_work_cont*, align 8
  %8 = alloca void (%struct.work_struct*)*, align 8
  %9 = alloca void (%struct.work_struct.0*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.iio_work_cont* %0, %struct.iio_work_cont** %7, align 8
  store void (%struct.work_struct*)* %1, void (%struct.work_struct*)** %8, align 8
  store void (%struct.work_struct.0*)* %2, void (%struct.work_struct.0*)** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %13 = load %struct.iio_work_cont*, %struct.iio_work_cont** %7, align 8
  %14 = getelementptr inbounds %struct.iio_work_cont, %struct.iio_work_cont* %13, i32 0, i32 4
  %15 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %8, align 8
  %16 = bitcast void (%struct.work_struct*)* %15 to void (%struct.work_struct.1*)*
  %17 = call i32 @INIT_WORK(i32* %14, void (%struct.work_struct.1*)* %16)
  %18 = load %struct.iio_work_cont*, %struct.iio_work_cont** %7, align 8
  %19 = getelementptr inbounds %struct.iio_work_cont, %struct.iio_work_cont* %18, i32 0, i32 3
  %20 = load void (%struct.work_struct.0*)*, void (%struct.work_struct.0*)** %9, align 8
  %21 = bitcast void (%struct.work_struct.0*)* %20 to void (%struct.work_struct.1*)*
  %22 = call i32 @INIT_WORK(i32* %19, void (%struct.work_struct.1*)* %21)
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.iio_work_cont*, %struct.iio_work_cont** %7, align 8
  %25 = getelementptr inbounds %struct.iio_work_cont, %struct.iio_work_cont* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.iio_work_cont*, %struct.iio_work_cont** %7, align 8
  %28 = getelementptr inbounds %struct.iio_work_cont, %struct.iio_work_cont* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i8*, i8** %12, align 8
  %30 = load %struct.iio_work_cont*, %struct.iio_work_cont** %7, align 8
  %31 = getelementptr inbounds %struct.iio_work_cont, %struct.iio_work_cont* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, void (%struct.work_struct.1*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
