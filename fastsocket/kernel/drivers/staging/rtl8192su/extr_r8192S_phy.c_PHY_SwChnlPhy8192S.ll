; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_SwChnlPhy8192S.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_SwChnlPhy8192S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i64, i8*, i64, i64 }

@COMP_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"==>PHY_SwChnlPhy8192S(), switch to channel %d.\0A\00", align 1
@RF_PSEUDO_11N = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_SwChnlPhy8192S(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %5, align 8
  %8 = load i32, i32* @COMP_SCAN, align 4
  %9 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %10 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @RT_TRACE(i32 %8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %49

18:                                               ; preds = %2
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RF_PSEUDO_11N, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i8*, i8** @FALSE, align 8
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  br label %49

28:                                               ; preds = %18
  %29 = load i8*, i8** @TRUE, align 8
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %38 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %42 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @phy_FinishSwChnlNow(%struct.net_device* %43, i32 %44)
  %46 = load i8*, i8** @FALSE, align 8
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %35, %24, %17
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32) #1

declare dso_local i32 @phy_FinishSwChnlNow(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
