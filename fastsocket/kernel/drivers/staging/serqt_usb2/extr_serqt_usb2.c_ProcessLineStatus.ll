; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/serqt_usb2/extr_serqt_usb2.c_ProcessLineStatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/serqt_usb2/extr_serqt_usb2.c_ProcessLineStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quatech_port = type { i8 }

@SERIAL_LSR_OE = common dso_local global i8 0, align 1
@SERIAL_LSR_PE = common dso_local global i8 0, align 1
@SERIAL_LSR_FE = common dso_local global i8 0, align 1
@SERIAL_LSR_BI = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.quatech_port*, i8)* @ProcessLineStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProcessLineStatus(%struct.quatech_port* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.quatech_port*, align 8
  %4 = alloca i8, align 1
  store %struct.quatech_port* %0, %struct.quatech_port** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @SERIAL_LSR_OE, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, i8* @SERIAL_LSR_PE, align 1
  %10 = zext i8 %9 to i32
  %11 = or i32 %8, %10
  %12 = load i8, i8* @SERIAL_LSR_FE, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %11, %13
  %15 = load i8, i8* @SERIAL_LSR_BI, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %14, %16
  %18 = and i32 %6, %17
  %19 = trunc i32 %18 to i8
  %20 = load %struct.quatech_port*, %struct.quatech_port** %3, align 8
  %21 = getelementptr inbounds %struct.quatech_port, %struct.quatech_port* %20, i32 0, i32 0
  store i8 %19, i8* %21, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
