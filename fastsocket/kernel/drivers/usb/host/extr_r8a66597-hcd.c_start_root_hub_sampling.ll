; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_start_root_hub_sampling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_start_root_hub_sampling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { %struct.r8a66597_root_hub* }
%struct.r8a66597_root_hub = type { i32, i32, i32 }

@LNST = common dso_local global i32 0, align 4
@R8A66597_MAX_SAMPLING = common dso_local global i32 0, align 4
@USB_PORT_FEAT_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_FEAT_C_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, i32, i32)* @start_root_hub_sampling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_root_hub_sampling(%struct.r8a66597* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.r8a66597*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8a66597_root_hub*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %9 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %8, i32 0, i32 0
  %10 = load %struct.r8a66597_root_hub*, %struct.r8a66597_root_hub** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.r8a66597_root_hub, %struct.r8a66597_root_hub* %10, i64 %12
  store %struct.r8a66597_root_hub* %13, %struct.r8a66597_root_hub** %7, align 8
  %14 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @get_syssts_reg(i32 %15)
  %17 = call i32 @r8a66597_read(%struct.r8a66597* %14, i32 %16)
  %18 = load i32, i32* @LNST, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.r8a66597_root_hub*, %struct.r8a66597_root_hub** %7, align 8
  %21 = getelementptr inbounds %struct.r8a66597_root_hub, %struct.r8a66597_root_hub* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @R8A66597_MAX_SAMPLING, align 4
  %23 = load %struct.r8a66597_root_hub*, %struct.r8a66597_root_hub** %7, align 8
  %24 = getelementptr inbounds %struct.r8a66597_root_hub, %struct.r8a66597_root_hub* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load i32, i32* @USB_PORT_FEAT_CONNECTION, align 4
  %29 = shl i32 1, %28
  %30 = load %struct.r8a66597_root_hub*, %struct.r8a66597_root_hub** %7, align 8
  %31 = getelementptr inbounds %struct.r8a66597_root_hub, %struct.r8a66597_root_hub* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %42

34:                                               ; preds = %3
  %35 = load i32, i32* @USB_PORT_FEAT_CONNECTION, align 4
  %36 = shl i32 1, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.r8a66597_root_hub*, %struct.r8a66597_root_hub** %7, align 8
  %39 = getelementptr inbounds %struct.r8a66597_root_hub, %struct.r8a66597_root_hub* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %34, %27
  %43 = load i32, i32* @USB_PORT_FEAT_C_CONNECTION, align 4
  %44 = shl i32 1, %43
  %45 = load %struct.r8a66597_root_hub*, %struct.r8a66597_root_hub** %7, align 8
  %46 = getelementptr inbounds %struct.r8a66597_root_hub, %struct.r8a66597_root_hub* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %50 = call i32 @r8a66597_root_hub_start_polling(%struct.r8a66597* %49)
  ret void
}

declare dso_local i32 @r8a66597_read(%struct.r8a66597*, i32) #1

declare dso_local i32 @get_syssts_reg(i32) #1

declare dso_local i32 @r8a66597_root_hub_start_polling(%struct.r8a66597*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
