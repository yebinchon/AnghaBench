; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_phy_configmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_phy_configmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64 }

@COMP_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Rtl819XMACPHY_Array_PG\0A\00", align 1
@MACPHY_Array_PGLength = common dso_local global i32 0, align 4
@Rtl819XMACPHY_Array_PG = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Read rtl819XMACPHY_Array\0A\00", align 1
@MACPHY_ArrayLength = common dso_local global i32 0, align 4
@Rtl819XMACPHY_Array = common dso_local global i32* null, align 8
@COMP_DBG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [92 x i8] c"The Rtl8190MACPHY_Array[0] is %x Rtl8190MACPHY_Array[1] is %x Rtl8190MACPHY_Array[2] is %x\0A\00", align 1
@Adapter = common dso_local global %struct.TYPE_2__* null, align 8
@MACPHY_ArrayLengthDTM = common dso_local global i32 0, align 4
@Rtl819XMACPHY_ArrayDTM = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_phy_configmac(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %6, align 8
  %9 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %10 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @COMP_PHY, align 4
  %15 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @MACPHY_Array_PGLength, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32*, i32** @Rtl819XMACPHY_Array_PG, align 8
  store i32* %17, i32** %5, align 8
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @COMP_PHY, align 4
  %20 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @MACPHY_ArrayLength, align 4
  store i32 %21, i32* %3, align 4
  %22 = load i32*, i32** @Rtl819XMACPHY_Array, align 8
  store i32* %22, i32** %5, align 8
  br label %23

23:                                               ; preds = %18, %13
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %80, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %83

28:                                               ; preds = %24
  %29 = load i32, i32* @COMP_DBG, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %29, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %40, i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 792
  br i1 %53, label %54, label %60

54:                                               ; preds = %28
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 2048, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %28
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rtl8192_setBBreg(%struct.net_device* %61, i32 %66, i32 %72, i32 %78)
  br label %80

80:                                               ; preds = %60
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 3
  store i32 %82, i32* %4, align 4
  br label %24

83:                                               ; preds = %24
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
