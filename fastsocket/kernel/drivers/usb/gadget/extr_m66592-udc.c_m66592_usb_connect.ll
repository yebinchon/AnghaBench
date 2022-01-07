; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_m66592-udc.c_m66592_usb_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_m66592-udc.c_m66592_usb_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m66592 = type { i32 }

@M66592_CTRE = common dso_local global i32 0, align 4
@M66592_INTENB0 = common dso_local global i32 0, align 4
@M66592_WDST = common dso_local global i32 0, align 4
@M66592_RDST = common dso_local global i32 0, align 4
@M66592_CMPL = common dso_local global i32 0, align 4
@M66592_BEMPE = common dso_local global i32 0, align 4
@M66592_BRDYE = common dso_local global i32 0, align 4
@M66592_DPRPU = common dso_local global i32 0, align 4
@M66592_SYSCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.m66592*)* @m66592_usb_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m66592_usb_connect(%struct.m66592* %0) #0 {
  %2 = alloca %struct.m66592*, align 8
  store %struct.m66592* %0, %struct.m66592** %2, align 8
  %3 = load %struct.m66592*, %struct.m66592** %2, align 8
  %4 = load i32, i32* @M66592_CTRE, align 4
  %5 = load i32, i32* @M66592_INTENB0, align 4
  %6 = call i32 @m66592_bset(%struct.m66592* %3, i32 %4, i32 %5)
  %7 = load %struct.m66592*, %struct.m66592** %2, align 8
  %8 = load i32, i32* @M66592_WDST, align 4
  %9 = load i32, i32* @M66592_RDST, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @M66592_CMPL, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @M66592_INTENB0, align 4
  %14 = call i32 @m66592_bset(%struct.m66592* %7, i32 %12, i32 %13)
  %15 = load %struct.m66592*, %struct.m66592** %2, align 8
  %16 = load i32, i32* @M66592_BEMPE, align 4
  %17 = load i32, i32* @M66592_BRDYE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @M66592_INTENB0, align 4
  %20 = call i32 @m66592_bset(%struct.m66592* %15, i32 %18, i32 %19)
  %21 = load %struct.m66592*, %struct.m66592** %2, align 8
  %22 = load i32, i32* @M66592_DPRPU, align 4
  %23 = load i32, i32* @M66592_SYSCFG, align 4
  %24 = call i32 @m66592_bset(%struct.m66592* %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @m66592_bset(%struct.m66592*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
