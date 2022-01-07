; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_td_to_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_td_to_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_hcd = type { i32 }
%struct.c67x00_td = type { i32 }

@TD_STATUSMASK_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ERROR_FLAG\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@TD_STATUSMASK_STALL = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@TD_STATUSMASK_TMOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"TIMEOUT\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c67x00_hcd*, %struct.c67x00_td*)* @c67x00_td_to_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c67x00_td_to_error(%struct.c67x00_hcd* %0, %struct.c67x00_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c67x00_hcd*, align 8
  %5 = alloca %struct.c67x00_td*, align 8
  store %struct.c67x00_hcd* %0, %struct.c67x00_hcd** %4, align 8
  store %struct.c67x00_td* %1, %struct.c67x00_td** %5, align 8
  %6 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %7 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TD_STATUSMASK_ERR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %4, align 8
  %14 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %15 = call i32 @dbg_td(%struct.c67x00_hcd* %13, %struct.c67x00_td* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EILSEQ, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %20 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TD_STATUSMASK_STALL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EPIPE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %18
  %29 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %30 = getelementptr inbounds %struct.c67x00_td, %struct.c67x00_td* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TD_STATUSMASK_TMOUT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %4, align 8
  %37 = load %struct.c67x00_td*, %struct.c67x00_td** %5, align 8
  %38 = call i32 @dbg_td(%struct.c67x00_hcd* %36, %struct.c67x00_td* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %35, %25, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @dbg_td(%struct.c67x00_hcd*, %struct.c67x00_td*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
