; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_fget_light.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_fget_light.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }

@EBADF = common dso_local global i32 0, align 4
@perf_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (i32, i32*)* @perf_fget_light to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @perf_fget_light(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.file*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = call %struct.file* @fget_light(i32 %7, i32* %8)
  store %struct.file* %9, %struct.file** %6, align 8
  %10 = load %struct.file*, %struct.file** %6, align 8
  %11 = icmp ne %struct.file* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EBADF, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.file* @ERR_PTR(i32 %14)
  store %struct.file* %15, %struct.file** %3, align 8
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, @perf_fops
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @fput_light(%struct.file* %22, i32 %24)
  %26 = load i32*, i32** %5, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* @EBADF, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.file* @ERR_PTR(i32 %28)
  store %struct.file* %29, %struct.file** %3, align 8
  br label %32

30:                                               ; preds = %16
  %31 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %31, %struct.file** %3, align 8
  br label %32

32:                                               ; preds = %30, %21, %12
  %33 = load %struct.file*, %struct.file** %3, align 8
  ret %struct.file* %33
}

declare dso_local %struct.file* @fget_light(i32, i32*) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local i32 @fput_light(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
