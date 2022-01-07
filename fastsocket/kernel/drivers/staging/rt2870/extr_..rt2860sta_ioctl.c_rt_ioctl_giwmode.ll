; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_giwmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_ioctl_giwmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }

@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i32 0, align 4
@IW_MODE_MONITOR = common dso_local global i32 0, align 4
@IW_MODE_AUTO = common dso_local global i32 0, align 4
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"==>rt_ioctl_giwmode(mode=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_ioctl_giwmode(%struct.net_device* %0, %struct.iw_request_info* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i64 @ADHOC_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @IW_MODE_ADHOC, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  br label %38

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @INFRA_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @IW_MODE_INFRA, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  br label %37

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @MONITOR_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @IW_MODE_MONITOR, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @IW_MODE_AUTO, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %23
  br label %38

38:                                               ; preds = %37, %16
  %39 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @DBGPRINT(i32 %39, i8* %43)
  ret i32 0
}

declare dso_local i64 @ADHOC_ON(i32) #1

declare dso_local i64 @INFRA_ON(i32) #1

declare dso_local i64 @MONITOR_ON(i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
