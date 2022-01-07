; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_wrapper.c_async_unwrap_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_wrapper.c_async_unwrap_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_device_stats = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @async_unwrap_char(%struct.net_device* %0, %struct.net_device_stats* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.net_device_stats* %1, %struct.net_device_stats** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %28 [
    i32 129, label %10
    i32 130, label %16
    i32 128, label %22
  ]

10:                                               ; preds = %4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @async_unwrap_ce(%struct.net_device* %11, %struct.net_device_stats* %12, i32* %13, i32 %14)
  br label %34

16:                                               ; preds = %4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @async_unwrap_bof(%struct.net_device* %17, %struct.net_device_stats* %18, i32* %19, i32 %20)
  br label %34

22:                                               ; preds = %4
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @async_unwrap_eof(%struct.net_device* %23, %struct.net_device_stats* %24, i32* %25, i32 %26)
  br label %34

28:                                               ; preds = %4
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @async_unwrap_other(%struct.net_device* %29, %struct.net_device_stats* %30, i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %22, %16, %10
  ret void
}

declare dso_local i32 @async_unwrap_ce(%struct.net_device*, %struct.net_device_stats*, i32*, i32) #1

declare dso_local i32 @async_unwrap_bof(%struct.net_device*, %struct.net_device_stats*, i32*, i32) #1

declare dso_local i32 @async_unwrap_eof(%struct.net_device*, %struct.net_device_stats*, i32*, i32) #1

declare dso_local i32 @async_unwrap_other(%struct.net_device*, %struct.net_device_stats*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
