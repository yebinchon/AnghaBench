; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8185_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8185_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@RESP_RATE = common dso_local global i32 0, align 4
@MAX_RESP_RATE_SHIFT = common dso_local global i32 0, align 4
@MIN_RESP_RATE_SHIFT = common dso_local global i32 0, align 4
@BRSR = common dso_local global i32 0, align 4
@BRSR_MBR_8185 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8185_set_rate(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = call i32 @ieeerate2rtlrate(i32 240)
  store i32 %8, i32* %5, align 4
  %9 = call i32 @ieeerate2rtlrate(i32 60)
  store i32 %9, i32* %6, align 4
  %10 = call i32 @ieeerate2rtlrate(i32 240)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load i32, i32* @RESP_RATE, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MAX_RESP_RATE_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MIN_RESP_RATE_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %15, %18
  %20 = call i32 @write_nic_byte(%struct.net_device* %11, i32 %12, i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load i32, i32* @BRSR, align 4
  %23 = call i32 @read_nic_word(%struct.net_device* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @BRSR_MBR_8185, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %37, %1
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %28

40:                                               ; preds = %28
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = load i32, i32* @BRSR, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @write_nic_word(%struct.net_device* %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @ieeerate2rtlrate(i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_word(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
