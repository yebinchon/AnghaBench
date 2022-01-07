; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_usb_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_usb_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_usb = type { i32, i32 }

@IFC_CTRL = common dso_local global i32 0, align 4
@IFC_CTRL_CARKITMODE = common dso_local global i32 0, align 4
@POWER_CTRL = common dso_local global i32 0, align 4
@POWER_CTRL_OTG_ENAB = common dso_local global i32 0, align 4
@FUNC_CTRL = common dso_local global i32 0, align 4
@FUNC_CTRL_XCVRSELECT_MASK = common dso_local global i32 0, align 4
@FUNC_CTRL_OPMODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unsupported T2 transceiver mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twl4030_usb*, i32)* @twl4030_usb_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl4030_usb_set_mode(%struct.twl4030_usb* %0, i32 %1) #0 {
  %3 = alloca %struct.twl4030_usb*, align 8
  %4 = alloca i32, align 4
  store %struct.twl4030_usb* %0, %struct.twl4030_usb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %7 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %25 [
    i32 128, label %9
    i32 -1, label %24
  ]

9:                                                ; preds = %2
  %10 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %11 = load i32, i32* @IFC_CTRL, align 4
  %12 = load i32, i32* @IFC_CTRL_CARKITMODE, align 4
  %13 = call i32 @twl4030_usb_clear_bits(%struct.twl4030_usb* %10, i32 %11, i32 %12)
  %14 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %15 = load i32, i32* @POWER_CTRL, align 4
  %16 = load i32, i32* @POWER_CTRL_OTG_ENAB, align 4
  %17 = call i32 @twl4030_usb_set_bits(%struct.twl4030_usb* %14, i32 %15, i32 %16)
  %18 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %19 = load i32, i32* @FUNC_CTRL, align 4
  %20 = load i32, i32* @FUNC_CTRL_XCVRSELECT_MASK, align 4
  %21 = load i32, i32* @FUNC_CTRL_OPMODE_MASK, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @twl4030_usb_clear_bits(%struct.twl4030_usb* %18, i32 %19, i32 %22)
  br label %31

24:                                               ; preds = %2
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %27 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %24, %9
  ret void
}

declare dso_local i32 @twl4030_usb_clear_bits(%struct.twl4030_usb*, i32, i32) #1

declare dso_local i32 @twl4030_usb_set_bits(%struct.twl4030_usb*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
