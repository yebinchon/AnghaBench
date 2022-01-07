; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_SwChnlCallback8192SUsb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_SwChnlCallback8192SUsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i8*, i32, i32, i32, i32 }

@COMP_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"==>SwChnlCallback8190Pci(), switch to channel\09\09\09\09%d\0A\00", align 1
@RF_PSEUDO_11N = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SwChnlCallback8192SUsb(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  %7 = load i32, i32* @COMP_SCAN, align 4
  %8 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %9 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @RT_TRACE(i32 %7, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %59

17:                                               ; preds = %1
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RF_PSEUDO_11N, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i8*, i8** @FALSE, align 8
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  br label %59

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %56, %27
  %29 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %30 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %59

34:                                               ; preds = %28
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %37 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 3
  %41 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %42 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %41, i32 0, i32 2
  %43 = call i32 @phy_SwChnlStepByStep(%struct.net_device* %35, i32 %38, i32* %40, i32* %42, i64* %4)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %34
  %46 = load i64, i64* %4, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %50

49:                                               ; preds = %45
  br label %56

50:                                               ; preds = %48
  br label %55

51:                                               ; preds = %34
  %52 = load i8*, i8** @FALSE, align 8
  %53 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %54 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %50
  br label %59

56:                                               ; preds = %49
  %57 = load i64, i64* @TRUE, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %28, label %59

59:                                               ; preds = %16, %23, %56, %55, %33
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32) #1

declare dso_local i32 @phy_SwChnlStepByStep(%struct.net_device*, i32, i32*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
