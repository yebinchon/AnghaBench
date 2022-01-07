; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_IsHTHalfNmodeAPs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_IsHTHalfNmodeAPs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.ieee80211_network }
%struct.ieee80211_network = type { %struct.TYPE_2__, i64, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@BELKINF5D8233V1_RALINK = common dso_local global i32 0, align 4
@BELKINF5D82334V3_RALINK = common dso_local global i32 0, align 4
@PCI_RALINK = common dso_local global i32 0, align 4
@EDIMAX_RALINK = common dso_local global i32 0, align 4
@AIRLINK_RALINK = common dso_local global i32 0, align 4
@UNKNOWN_BORADCOM = common dso_local global i32 0, align 4
@LINKSYSWRT330_LINKSYSWRT300_BROADCOM = common dso_local global i32 0, align 4
@LINKSYSWRT350_LINKSYSWRT150_BROADCOM = common dso_local global i32 0, align 4
@NETGEAR834Bv2_BROADCOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsHTHalfNmodeAPs(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_network*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %5, i32 0, i32 0
  store %struct.ieee80211_network* %6, %struct.ieee80211_network** %4, align 8
  %7 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @BELKINF5D8233V1_RALINK, align 4
  %11 = call i64 @memcmp(i32 %9, i32 %10, i32 3)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %1
  %14 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BELKINF5D82334V3_RALINK, align 4
  %18 = call i64 @memcmp(i32 %16, i32 %17, i32 3)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %13
  %21 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PCI_RALINK, align 4
  %25 = call i64 @memcmp(i32 %23, i32 %24, i32 3)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %20
  %28 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EDIMAX_RALINK, align 4
  %32 = call i64 @memcmp(i32 %30, i32 %31, i32 3)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %27
  %35 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AIRLINK_RALINK, align 4
  %39 = call i64 @memcmp(i32 %37, i32 %38, i32 3)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %34, %27, %20, %13, %1
  store i32 1, i32* %3, align 4
  br label %91

47:                                               ; preds = %41
  %48 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @UNKNOWN_BORADCOM, align 4
  %52 = call i64 @memcmp(i32 %50, i32 %51, i32 3)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %80, label %54

54:                                               ; preds = %47
  %55 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @LINKSYSWRT330_LINKSYSWRT300_BROADCOM, align 4
  %59 = call i64 @memcmp(i32 %57, i32 %58, i32 3)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %54
  %62 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @LINKSYSWRT350_LINKSYSWRT150_BROADCOM, align 4
  %66 = call i64 @memcmp(i32 %64, i32 %65, i32 3)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %61
  %69 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @NETGEAR834Bv2_BROADCOM, align 4
  %73 = call i64 @memcmp(i32 %71, i32 %72, i32 3)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %77 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %68, %61, %54, %47
  store i32 1, i32* %3, align 4
  br label %90

81:                                               ; preds = %75
  %82 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %83 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %89

88:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %87
  br label %90

90:                                               ; preds = %89, %80
  br label %91

91:                                               ; preds = %90, %46
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
