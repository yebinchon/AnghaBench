; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whc-rc.c_whcrc_start_rc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whc-rc.c_whcrc_start_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.whcrc* }
%struct.whcrc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@URCCMD_RESET = common dso_local global i32 0, align 4
@URCCMD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"hardware reset\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@URCINTR = common dso_local global i64 0, align 8
@URCCMD_RS = common dso_local global i32 0, align 4
@URCSTS = common dso_local global i64 0, align 8
@URCSTS_HALTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"radio controller start\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@URCINTR_EN_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*)* @whcrc_start_rc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whcrc_start_rc(%struct.uwb_rc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca %struct.whcrc*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  %6 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %7 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %6, i32 0, i32 0
  %8 = load %struct.whcrc*, %struct.whcrc** %7, align 8
  store %struct.whcrc* %8, %struct.whcrc** %4, align 8
  %9 = load %struct.whcrc*, %struct.whcrc** %4, align 8
  %10 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load i32, i32* @URCCMD_RESET, align 4
  %14 = load %struct.whcrc*, %struct.whcrc** %4, align 8
  %15 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @URCCMD, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @le_writel(i32 %13, i64 %18)
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load %struct.whcrc*, %struct.whcrc** %4, align 8
  %22 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @URCCMD, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* @URCCMD_RESET, align 4
  %27 = call i64 @whci_wait_for(%struct.device* %20, i64 %25, i32 %26, i32 0, i32 5000, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %68

32:                                               ; preds = %1
  %33 = load %struct.whcrc*, %struct.whcrc** %4, align 8
  %34 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @URCINTR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @le_writel(i32 0, i64 %37)
  %39 = load i32, i32* @URCCMD_RS, align 4
  %40 = load %struct.whcrc*, %struct.whcrc** %4, align 8
  %41 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @URCCMD, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @le_writel(i32 %39, i64 %44)
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load %struct.whcrc*, %struct.whcrc** %4, align 8
  %48 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @URCSTS, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* @URCSTS_HALTED, align 4
  %53 = call i64 @whci_wait_for(%struct.device* %46, i64 %51, i32 %52, i32 0, i32 5000, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %32
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %68

58:                                               ; preds = %32
  %59 = load %struct.whcrc*, %struct.whcrc** %4, align 8
  %60 = call i32 @whcrc_enable_events(%struct.whcrc* %59)
  %61 = load i32, i32* @URCINTR_EN_ALL, align 4
  %62 = load %struct.whcrc*, %struct.whcrc** %4, align 8
  %63 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @URCINTR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @le_writel(i32 %61, i64 %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %58, %55, %29
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @le_writel(i32, i64) #1

declare dso_local i64 @whci_wait_for(%struct.device*, i64, i32, i32, i32, i8*) #1

declare dso_local i32 @whcrc_enable_events(%struct.whcrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
