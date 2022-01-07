; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597.h_r8a66597_mdfy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597.h_r8a66597_mdfy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, i32, i32, i64)* @r8a66597_mdfy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8a66597_mdfy(%struct.r8a66597* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.r8a66597*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.r8a66597* %0, %struct.r8a66597** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @r8a66597_read(%struct.r8a66597* %10, i64 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @r8a66597_write(%struct.r8a66597* %20, i32 %21, i64 %22)
  ret void
}

declare dso_local i32 @r8a66597_read(%struct.r8a66597*, i64) #1

declare dso_local i32 @r8a66597_write(%struct.r8a66597*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
