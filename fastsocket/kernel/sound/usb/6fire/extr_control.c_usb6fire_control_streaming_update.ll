; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_control.c_usb6fire_control_streaming_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_control.c_usb6fire_control_streaming_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.control_runtime = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comm_runtime* }
%struct.comm_runtime = type { i32 (%struct.comm_runtime*, i32, i32, i32, i32)* }

@DIGITAL_THRU_ONLY_SAMPLERATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.control_runtime*)* @usb6fire_control_streaming_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_control_streaming_update(%struct.control_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.control_runtime*, align 8
  %4 = alloca %struct.comm_runtime*, align 8
  store %struct.control_runtime* %0, %struct.control_runtime** %3, align 8
  %5 = load %struct.control_runtime*, %struct.control_runtime** %3, align 8
  %6 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.comm_runtime*, %struct.comm_runtime** %8, align 8
  store %struct.comm_runtime* %9, %struct.comm_runtime** %4, align 8
  %10 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %11 = icmp ne %struct.comm_runtime* %10, null
  br i1 %11, label %12, label %45

12:                                               ; preds = %1
  %13 = load %struct.control_runtime*, %struct.control_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = load %struct.control_runtime*, %struct.control_runtime** %3, align 8
  %19 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.control_runtime*, %struct.control_runtime** %3, align 8
  %24 = load i32, i32* @DIGITAL_THRU_ONLY_SAMPLERATE, align 4
  %25 = call i32 @usb6fire_control_set_rate(%struct.control_runtime* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %17, %12
  %27 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %28 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %27, i32 0, i32 0
  %29 = load i32 (%struct.comm_runtime*, i32, i32, i32, i32)*, i32 (%struct.comm_runtime*, i32, i32, i32, i32)** %28, align 8
  %30 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %31 = load %struct.control_runtime*, %struct.control_runtime** %3, align 8
  %32 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = load %struct.control_runtime*, %struct.control_runtime** %3, align 8
  %38 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 8, i32 0
  %43 = or i32 %36, %42
  %44 = call i32 %29(%struct.comm_runtime* %30, i32 2, i32 0, i32 0, i32 %43)
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %1
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %26
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @usb6fire_control_set_rate(%struct.control_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
