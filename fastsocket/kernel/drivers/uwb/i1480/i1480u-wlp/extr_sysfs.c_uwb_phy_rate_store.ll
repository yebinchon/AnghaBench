; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_sysfs.c_uwb_phy_rate_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_sysfs.c_uwb_phy_rate_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp_options = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UWB_PHY_RATE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_phy_rate_store(%struct.wlp_options* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.wlp_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wlp_options* %0, %struct.wlp_options** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @sscanf(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  br label %28

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @UWB_PHY_RATE_INVALID, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %28

23:                                               ; preds = %16
  %24 = load %struct.wlp_options*, %struct.wlp_options** %4, align 8
  %25 = getelementptr inbounds %struct.wlp_options, %struct.wlp_options* %24, i32 0, i32 0
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @wlp_tx_hdr_set_phy_rate(i32* %25, i32 %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %23, %22, %13
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  br label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i64 [ %33, %31 ], [ %35, %34 ]
  %38 = trunc i64 %37 to i32
  ret i32 %38
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @wlp_tx_hdr_set_phy_rate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
