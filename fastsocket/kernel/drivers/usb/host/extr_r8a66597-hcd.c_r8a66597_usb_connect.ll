; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_usb_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_usb_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { %struct.r8a66597_root_hub* }
%struct.r8a66597_root_hub = type { i32 }

@USB_PORT_FEAT_HIGHSPEED = common dso_local global i32 0, align 4
@USB_PORT_FEAT_LOWSPEED = common dso_local global i32 0, align 4
@HSMODE = common dso_local global i64 0, align 8
@LSMODE = common dso_local global i64 0, align 8
@USB_PORT_FEAT_RESET = common dso_local global i32 0, align 4
@USB_PORT_FEAT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, i32)* @r8a66597_usb_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8a66597_usb_connect(%struct.r8a66597* %0, i32 %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.r8a66597_root_hub*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @get_rh_usb_speed(%struct.r8a66597* %7, i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %11 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %10, i32 0, i32 0
  %12 = load %struct.r8a66597_root_hub*, %struct.r8a66597_root_hub** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.r8a66597_root_hub, %struct.r8a66597_root_hub* %12, i64 %14
  store %struct.r8a66597_root_hub* %15, %struct.r8a66597_root_hub** %6, align 8
  %16 = load i32, i32* @USB_PORT_FEAT_HIGHSPEED, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* @USB_PORT_FEAT_LOWSPEED, align 4
  %19 = shl i32 1, %18
  %20 = or i32 %17, %19
  %21 = xor i32 %20, -1
  %22 = load %struct.r8a66597_root_hub*, %struct.r8a66597_root_hub** %6, align 8
  %23 = getelementptr inbounds %struct.r8a66597_root_hub, %struct.r8a66597_root_hub* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @HSMODE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load i32, i32* @USB_PORT_FEAT_HIGHSPEED, align 4
  %31 = shl i32 1, %30
  %32 = load %struct.r8a66597_root_hub*, %struct.r8a66597_root_hub** %6, align 8
  %33 = getelementptr inbounds %struct.r8a66597_root_hub, %struct.r8a66597_root_hub* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %48

36:                                               ; preds = %2
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @LSMODE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, i32* @USB_PORT_FEAT_LOWSPEED, align 4
  %42 = shl i32 1, %41
  %43 = load %struct.r8a66597_root_hub*, %struct.r8a66597_root_hub** %6, align 8
  %44 = getelementptr inbounds %struct.r8a66597_root_hub, %struct.r8a66597_root_hub* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %40, %36
  br label %48

48:                                               ; preds = %47, %29
  %49 = load i32, i32* @USB_PORT_FEAT_RESET, align 4
  %50 = shl i32 1, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.r8a66597_root_hub*, %struct.r8a66597_root_hub** %6, align 8
  %53 = getelementptr inbounds %struct.r8a66597_root_hub, %struct.r8a66597_root_hub* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @USB_PORT_FEAT_ENABLE, align 4
  %57 = shl i32 1, %56
  %58 = load %struct.r8a66597_root_hub*, %struct.r8a66597_root_hub** %6, align 8
  %59 = getelementptr inbounds %struct.r8a66597_root_hub, %struct.r8a66597_root_hub* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  ret void
}

declare dso_local i64 @get_rh_usb_speed(%struct.r8a66597*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
