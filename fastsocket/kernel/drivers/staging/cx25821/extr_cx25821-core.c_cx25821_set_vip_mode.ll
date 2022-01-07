; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_set_vip_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_set_vip_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32 }
%struct.sram_channel = type { i32, i32 }

@PIXEL_FRMT_422 = common dso_local global i32 0, align 4
@PIXEL_ENGINE_VIP1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx25821_dev*, %struct.sram_channel*)* @cx25821_set_vip_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx25821_set_vip_mode(%struct.cx25821_dev* %0, %struct.sram_channel* %1) #0 {
  %3 = alloca %struct.cx25821_dev*, align 8
  %4 = alloca %struct.sram_channel*, align 8
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %3, align 8
  store %struct.sram_channel* %1, %struct.sram_channel** %4, align 8
  %5 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %6 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PIXEL_FRMT_422, align 4
  %9 = call i32 @cx_write(i32 %7, i32 %8)
  %10 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %11 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PIXEL_ENGINE_VIP1, align 4
  %14 = call i32 @cx_write(i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
