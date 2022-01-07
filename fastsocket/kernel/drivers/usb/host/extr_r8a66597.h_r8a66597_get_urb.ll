; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597.h_r8a66597_get_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597.h_r8a66597_get_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.r8a66597 = type { i32 }
%struct.r8a66597_td = type { %struct.urb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.r8a66597*, i32)* @r8a66597_get_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @r8a66597_get_urb(%struct.r8a66597* %0, i32 %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8a66597_td*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.r8a66597_td* @r8a66597_get_td(%struct.r8a66597* %6, i32 %7)
  store %struct.r8a66597_td* %8, %struct.r8a66597_td** %5, align 8
  %9 = load %struct.r8a66597_td*, %struct.r8a66597_td** %5, align 8
  %10 = icmp ne %struct.r8a66597_td* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.r8a66597_td*, %struct.r8a66597_td** %5, align 8
  %13 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %12, i32 0, i32 0
  %14 = load %struct.urb*, %struct.urb** %13, align 8
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi %struct.urb* [ %14, %11 ], [ null, %15 ]
  ret %struct.urb* %17
}

declare dso_local %struct.r8a66597_td* @r8a66597_get_td(%struct.r8a66597*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
