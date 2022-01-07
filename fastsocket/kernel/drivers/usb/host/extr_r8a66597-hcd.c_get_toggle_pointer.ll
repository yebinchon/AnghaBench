; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_get_toggle_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_get_toggle_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597_device = type { i16, i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16* (%struct.r8a66597_device*, i32)* @get_toggle_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i16* @get_toggle_pointer(%struct.r8a66597_device* %0, i32 %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca %struct.r8a66597_device*, align 8
  %5 = alloca i32, align 4
  store %struct.r8a66597_device* %0, %struct.r8a66597_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %7 = icmp ne %struct.r8a66597_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i16* null, i16** %3, align 8
  br label %21

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @usb_pipein(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %15 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %14, i32 0, i32 0
  br label %19

16:                                               ; preds = %9
  %17 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %18 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %17, i32 0, i32 1
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i16* [ %15, %13 ], [ %18, %16 ]
  store i16* %20, i16** %3, align 8
  br label %21

21:                                               ; preds = %19, %8
  %22 = load i16*, i16** %3, align 8
  ret i16* %22
}

declare dso_local i64 @usb_pipein(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
