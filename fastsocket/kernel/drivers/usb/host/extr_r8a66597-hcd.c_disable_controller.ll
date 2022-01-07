; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_disable_controller.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_disable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }

@INTENB0 = common dso_local global i32 0, align 4
@INTSTS0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*)* @disable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_controller(%struct.r8a66597* %0) #0 {
  %2 = alloca %struct.r8a66597*, align 8
  %3 = alloca i32, align 4
  store %struct.r8a66597* %0, %struct.r8a66597** %2, align 8
  %4 = load %struct.r8a66597*, %struct.r8a66597** %2, align 8
  %5 = load i32, i32* @INTENB0, align 4
  %6 = call i32 @r8a66597_write(%struct.r8a66597* %4, i32 0, i32 %5)
  %7 = load %struct.r8a66597*, %struct.r8a66597** %2, align 8
  %8 = load i32, i32* @INTSTS0, align 4
  %9 = call i32 @r8a66597_write(%struct.r8a66597* %7, i32 0, i32 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %20, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.r8a66597*, %struct.r8a66597** %2, align 8
  %13 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.r8a66597*, %struct.r8a66597** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @r8a66597_disable_port(%struct.r8a66597* %17, i32 %18)
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %10

23:                                               ; preds = %10
  %24 = load %struct.r8a66597*, %struct.r8a66597** %2, align 8
  %25 = call i32 @r8a66597_clock_disable(%struct.r8a66597* %24)
  ret void
}

declare dso_local i32 @r8a66597_write(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @r8a66597_disable_port(%struct.r8a66597*, i32) #1

declare dso_local i32 @r8a66597_clock_disable(%struct.r8a66597*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
