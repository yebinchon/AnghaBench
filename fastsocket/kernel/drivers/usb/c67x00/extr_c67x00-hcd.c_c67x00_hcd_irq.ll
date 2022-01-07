; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-hcd.c_c67x00_hcd_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-hcd.c_c67x00_hcd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_sie = type { i32, %struct.c67x00_hcd* }
%struct.c67x00_hcd = type { i32 }
%struct.usb_hcd = type { i64, i32 }

@HUSB_TDListDone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unknown SIE msg flag(s): 0x%04x\0A\00", align 1
@HC_STATE_HALT = common dso_local global i64 0, align 8
@SOF_EOP_IRQ_FLG = common dso_local global i32 0, align 4
@HCD_FLAG_SAW_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c67x00_sie*, i32, i32)* @c67x00_hcd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c67x00_hcd_irq(%struct.c67x00_sie* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.c67x00_sie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.c67x00_hcd*, align 8
  %8 = alloca %struct.usb_hcd*, align 8
  store %struct.c67x00_sie* %0, %struct.c67x00_sie** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.c67x00_sie*, %struct.c67x00_sie** %4, align 8
  %10 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %9, i32 0, i32 1
  %11 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %10, align 8
  store %struct.c67x00_hcd* %11, %struct.c67x00_hcd** %7, align 8
  %12 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %7, align 8
  %13 = call %struct.usb_hcd* @c67x00_hcd_to_hcd(%struct.c67x00_hcd* %12)
  store %struct.usb_hcd* %13, %struct.usb_hcd** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @HUSB_TDListDone, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %7, align 8
  %23 = call i32 @c67x00_sched_kick(%struct.c67x00_hcd* %22)
  br label %29

24:                                               ; preds = %16
  %25 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %7, align 8
  %26 = call i32 @c67x00_hcd_dev(%struct.c67x00_hcd* %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dev_warn(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %21
  br label %30

30:                                               ; preds = %29, %3
  %31 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %32 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HC_STATE_HALT, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %63

40:                                               ; preds = %30
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %42 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %63

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.c67x00_sie*, %struct.c67x00_sie** %4, align 8
  %48 = getelementptr inbounds %struct.c67x00_sie, %struct.c67x00_sie* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @SOFEOP_FLG(i32 %49)
  %51 = and i32 %46, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load %struct.c67x00_sie*, %struct.c67x00_sie** %4, align 8
  %55 = load i32, i32* @SOF_EOP_IRQ_FLG, align 4
  %56 = call i32 @c67x00_ll_usb_clear_status(%struct.c67x00_sie* %54, i32 %55)
  %57 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %7, align 8
  %58 = call i32 @c67x00_sched_kick(%struct.c67x00_hcd* %57)
  %59 = load i32, i32* @HCD_FLAG_SAW_IRQ, align 4
  %60 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %61 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %60, i32 0, i32 1
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  br label %63

63:                                               ; preds = %39, %44, %53, %45
  ret void
}

declare dso_local %struct.usb_hcd* @c67x00_hcd_to_hcd(%struct.c67x00_hcd*) #1

declare dso_local i32 @c67x00_sched_kick(%struct.c67x00_hcd*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @c67x00_hcd_dev(%struct.c67x00_hcd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @SOFEOP_FLG(i32) #1

declare dso_local i32 @c67x00_ll_usb_clear_status(%struct.c67x00_sie*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
