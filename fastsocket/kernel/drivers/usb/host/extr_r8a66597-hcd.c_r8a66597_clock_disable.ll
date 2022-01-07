; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_clock_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_clock_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SCKE = common dso_local global i32 0, align 4
@SYSCFG0 = common dso_local global i32 0, align 4
@PLLC = common dso_local global i32 0, align 4
@XCKE = common dso_local global i32 0, align 4
@USBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*)* @r8a66597_clock_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8a66597_clock_disable(%struct.r8a66597* %0) #0 {
  %2 = alloca %struct.r8a66597*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %2, align 8
  %3 = load %struct.r8a66597*, %struct.r8a66597** %2, align 8
  %4 = load i32, i32* @SCKE, align 4
  %5 = load i32, i32* @SYSCFG0, align 4
  %6 = call i32 @r8a66597_bclr(%struct.r8a66597* %3, i32 %4, i32 %5)
  %7 = call i32 @udelay(i32 1)
  %8 = load %struct.r8a66597*, %struct.r8a66597** %2, align 8
  %9 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.r8a66597*, %struct.r8a66597** %2, align 8
  %17 = load i32, i32* @PLLC, align 4
  %18 = load i32, i32* @SYSCFG0, align 4
  %19 = call i32 @r8a66597_bclr(%struct.r8a66597* %16, i32 %17, i32 %18)
  %20 = load %struct.r8a66597*, %struct.r8a66597** %2, align 8
  %21 = load i32, i32* @XCKE, align 4
  %22 = load i32, i32* @SYSCFG0, align 4
  %23 = call i32 @r8a66597_bclr(%struct.r8a66597* %20, i32 %21, i32 %22)
  %24 = load %struct.r8a66597*, %struct.r8a66597** %2, align 8
  %25 = load i32, i32* @USBE, align 4
  %26 = load i32, i32* @SYSCFG0, align 4
  %27 = call i32 @r8a66597_bclr(%struct.r8a66597* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @r8a66597_bclr(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
