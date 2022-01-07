; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_ls041y3_esd_check_mode1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcd_mipid.c_ls041y3_esd_check_mode1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipid_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MIPID_CMD_RDDSDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ESD mode 1 state1 %02x state2 %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mipid_device*)* @ls041y3_esd_check_mode1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ls041y3_esd_check_mode1(%struct.mipid_device* %0) #0 {
  %2 = alloca %struct.mipid_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mipid_device* %0, %struct.mipid_device** %2, align 8
  %5 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %6 = load i32, i32* @MIPID_CMD_RDDSDR, align 4
  %7 = call i32 @mipid_read(%struct.mipid_device* %5, i32 %6, i32* %3, i32 1)
  %8 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %9 = call i32 @set_sleep_mode(%struct.mipid_device* %8, i32 0)
  %10 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %11 = load i32, i32* @MIPID_CMD_RDDSDR, align 4
  %12 = call i32 @mipid_read(%struct.mipid_device* %10, i32 %11, i32* %4, i32 1)
  %13 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %14 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = xor i32 %20, %21
  %23 = and i32 %22, 64
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %27 = call i32 @ls041y3_esd_recover(%struct.mipid_device* %26)
  br label %28

28:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @mipid_read(%struct.mipid_device*, i32, i32*, i32) #1

declare dso_local i32 @set_sleep_mode(%struct.mipid_device*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @ls041y3_esd_recover(%struct.mipid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
