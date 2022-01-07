; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_pipe_toggle_save.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_pipe_toggle_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.r8a66597_pipe = type { i32 }
%struct.urb = type { i32 }

@SQMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_pipe*, %struct.urb*)* @pipe_toggle_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_toggle_save(%struct.r8a66597* %0, %struct.r8a66597_pipe* %1, %struct.urb* %2) #0 {
  %4 = alloca %struct.r8a66597*, align 8
  %5 = alloca %struct.r8a66597_pipe*, align 8
  %6 = alloca %struct.urb*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %4, align 8
  store %struct.r8a66597_pipe* %1, %struct.r8a66597_pipe** %5, align 8
  store %struct.urb* %2, %struct.urb** %6, align 8
  %7 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %8 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %5, align 8
  %9 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @r8a66597_read(%struct.r8a66597* %7, i32 %10)
  %12 = load i32, i32* @SQMON, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %17 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %5, align 8
  %18 = load %struct.urb*, %struct.urb** %6, align 8
  %19 = call i32 @pipe_toggle_set(%struct.r8a66597* %16, %struct.r8a66597_pipe* %17, %struct.urb* %18, i32 1)
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %22 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %5, align 8
  %23 = load %struct.urb*, %struct.urb** %6, align 8
  %24 = call i32 @pipe_toggle_set(%struct.r8a66597* %21, %struct.r8a66597_pipe* %22, %struct.urb* %23, i32 0)
  br label %25

25:                                               ; preds = %20, %15
  ret void
}

declare dso_local i32 @r8a66597_read(%struct.r8a66597*, i32) #1

declare dso_local i32 @pipe_toggle_set(%struct.r8a66597*, %struct.r8a66597_pipe*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
