; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_pipe_toggle_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_pipe_toggle_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.r8a66597_pipe = type { i32 }
%struct.urb = type { i32 }
%struct.r8a66597_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_pipe*, %struct.urb*, i32)* @pipe_toggle_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_toggle_set(%struct.r8a66597* %0, %struct.r8a66597_pipe* %1, %struct.urb* %2, i32 %3) #0 {
  %5 = alloca %struct.r8a66597*, align 8
  %6 = alloca %struct.r8a66597_pipe*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.r8a66597_device*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %5, align 8
  store %struct.r8a66597_pipe* %1, %struct.r8a66597_pipe** %6, align 8
  store %struct.urb* %2, %struct.urb** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %13 = load %struct.urb*, %struct.urb** %7, align 8
  %14 = call %struct.r8a66597_device* @get_urb_to_r8a66597_dev(%struct.r8a66597* %12, %struct.urb* %13)
  store %struct.r8a66597_device* %14, %struct.r8a66597_device** %9, align 8
  %15 = load %struct.urb*, %struct.urb** %7, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call zeroext i8 @usb_pipeendpoint(i32 %17)
  store i8 %18, i8* %10, align 1
  %19 = load %struct.r8a66597_device*, %struct.r8a66597_device** %9, align 8
  %20 = load %struct.urb*, %struct.urb** %7, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i16* @get_toggle_pointer(%struct.r8a66597_device* %19, i32 %22)
  store i16* %23, i16** %11, align 8
  %24 = load i16*, i16** %11, align 8
  %25 = icmp ne i16* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %49

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i8, i8* %10, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 1, %32
  %34 = load i16*, i16** %11, align 8
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = or i32 %36, %33
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %34, align 2
  br label %49

39:                                               ; preds = %27
  %40 = load i8, i8* %10, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 1, %41
  %43 = xor i32 %42, -1
  %44 = load i16*, i16** %11, align 8
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, %43
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %44, align 2
  br label %49

49:                                               ; preds = %26, %39, %30
  ret void
}

declare dso_local %struct.r8a66597_device* @get_urb_to_r8a66597_dev(%struct.r8a66597*, %struct.urb*) #1

declare dso_local zeroext i8 @usb_pipeendpoint(i32) #1

declare dso_local i16* @get_toggle_pointer(%struct.r8a66597_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
