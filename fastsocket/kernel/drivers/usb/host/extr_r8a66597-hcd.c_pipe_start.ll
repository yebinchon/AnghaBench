; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_pipe_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_pipe_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.r8a66597_pipe = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PID = common dso_local global i32 0, align 4
@PID_STALL = common dso_local global i32 0, align 4
@PID_NAK = common dso_local global i32 0, align 4
@PID_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_pipe*)* @pipe_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_start(%struct.r8a66597* %0, %struct.r8a66597_pipe* %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.r8a66597_pipe*, align 8
  %5 = alloca i32, align 4
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store %struct.r8a66597_pipe* %1, %struct.r8a66597_pipe** %4, align 8
  %6 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %7 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %8 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @r8a66597_read(%struct.r8a66597* %6, i32 %9)
  %11 = load i32, i32* @PID, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %14 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PID_STALL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = and i32 %18, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %28 = load i32, i32* @PID_NAK, align 4
  %29 = load i32, i32* @PID, align 4
  %30 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %31 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @r8a66597_mdfy(%struct.r8a66597* %27, i32 %28, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %26, %2
  %35 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %36 = load i32, i32* @PID_BUF, align 4
  %37 = load i32, i32* @PID, align 4
  %38 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %39 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @r8a66597_mdfy(%struct.r8a66597* %35, i32 %36, i32 %37, i32 %40)
  ret void
}

declare dso_local i32 @r8a66597_read(%struct.r8a66597*, i32) #1

declare dso_local i32 @r8a66597_mdfy(%struct.r8a66597*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
