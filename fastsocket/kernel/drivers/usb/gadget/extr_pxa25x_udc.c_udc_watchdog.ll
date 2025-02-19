; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_udc_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_udc_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_udc = type { i64 }

@EP0_STALL = common dso_local global i64 0, align 8
@UDCCS0 = common dso_local global i32 0, align 4
@UDCCS0_FST = common dso_local global i32 0, align 4
@UDCCS0_SST = common dso_local global i32 0, align 4
@UDCCS0_FTF = common dso_local global i32 0, align 4
@DBG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ep0 re-stall\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @udc_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_watchdog(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pxa25x_udc*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.pxa25x_udc*
  store %struct.pxa25x_udc* %6, %struct.pxa25x_udc** %3, align 8
  %7 = call i32 (...) @local_irq_disable()
  %8 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %3, align 8
  %9 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EP0_STALL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load i32, i32* @UDCCS0, align 4
  %15 = load i32, i32* @UDCCS0_FST, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load i32, i32* @UDCCS0, align 4
  %20 = load i32, i32* @UDCCS0_SST, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32, i32* @UDCCS0_FST, align 4
  %25 = load i32, i32* @UDCCS0_FTF, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* @UDCCS0, align 4
  %27 = load i32, i32* @DBG_VERBOSE, align 4
  %28 = call i32 @DBG(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %3, align 8
  %30 = call i32 @start_watchdog(%struct.pxa25x_udc* %29)
  br label %31

31:                                               ; preds = %23, %18, %13, %1
  %32 = call i32 (...) @local_irq_enable()
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @start_watchdog(%struct.pxa25x_udc*) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
