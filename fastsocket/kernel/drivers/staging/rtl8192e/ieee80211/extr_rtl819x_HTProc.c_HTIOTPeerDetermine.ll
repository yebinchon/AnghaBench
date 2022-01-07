; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_rtl819x_HTProc.c_HTIOTPeerDetermine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_rtl819x_HTProc.c_HTIOTPeerDetermine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.ieee80211_network, %struct.TYPE_4__* }
%struct.ieee80211_network = type { i32, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i8* }

@HT_IOT_PEER_REALTEK = common dso_local global i8* null, align 8
@HT_IOT_PEER_BROADCOM = common dso_local global i8* null, align 8
@UNKNOWN_BORADCOM = common dso_local global i32 0, align 4
@LINKSYSWRT330_LINKSYSWRT300_BROADCOM = common dso_local global i32 0, align 4
@LINKSYSWRT350_LINKSYSWRT150_BROADCOM = common dso_local global i32 0, align 4
@NETGEAR834Bv2_BROADCOM = common dso_local global i32 0, align 4
@BELKINF5D8233V1_RALINK = common dso_local global i32 0, align 4
@BELKINF5D82334V3_RALINK = common dso_local global i32 0, align 4
@PCI_RALINK = common dso_local global i32 0, align 4
@EDIMAX_RALINK = common dso_local global i32 0, align 4
@AIRLINK_RALINK = common dso_local global i32 0, align 4
@HT_IOT_PEER_RALINK = common dso_local global i8* null, align 8
@DLINK_ATHEROS = common dso_local global i32 0, align 4
@HT_IOT_PEER_ATHEROS = common dso_local global i8* null, align 8
@CISCO_BROADCOM = common dso_local global i32 0, align 4
@HT_IOT_PEER_CISCO = common dso_local global i8* null, align 8
@HT_IOT_PEER_UNKNOWN = common dso_local global i8* null, align 8
@IEEE80211_DL_IOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Joseph debug!! IOTPEER: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HTIOTPeerDetermine(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.ieee80211_network*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %5 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 0
  store %struct.ieee80211_network* %9, %struct.ieee80211_network** %4, align 8
  %10 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i8*, i8** @HT_IOT_PEER_REALTEK, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  br label %140

19:                                               ; preds = %1
  %20 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i8*, i8** @HT_IOT_PEER_BROADCOM, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %139

28:                                               ; preds = %19
  %29 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @UNKNOWN_BORADCOM, align 4
  %33 = call i64 @memcmp(i32 %31, i32 %32, i32 3)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %28
  %36 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @LINKSYSWRT330_LINKSYSWRT300_BROADCOM, align 4
  %40 = call i64 @memcmp(i32 %38, i32 %39, i32 3)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %35
  %43 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @LINKSYSWRT350_LINKSYSWRT150_BROADCOM, align 4
  %47 = call i64 @memcmp(i32 %45, i32 %46, i32 3)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @NETGEAR834Bv2_BROADCOM, align 4
  %54 = call i64 @memcmp(i32 %52, i32 %53, i32 3)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49, %42, %35, %28
  %57 = load i8*, i8** @HT_IOT_PEER_BROADCOM, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %138

60:                                               ; preds = %49
  %61 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @BELKINF5D8233V1_RALINK, align 4
  %65 = call i64 @memcmp(i32 %63, i32 %64, i32 3)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %100, label %67

67:                                               ; preds = %60
  %68 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %69 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BELKINF5D82334V3_RALINK, align 4
  %72 = call i64 @memcmp(i32 %70, i32 %71, i32 3)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %100, label %74

74:                                               ; preds = %67
  %75 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PCI_RALINK, align 4
  %79 = call i64 @memcmp(i32 %77, i32 %78, i32 3)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %100, label %81

81:                                               ; preds = %74
  %82 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %83 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @EDIMAX_RALINK, align 4
  %86 = call i64 @memcmp(i32 %84, i32 %85, i32 3)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %81
  %89 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %90 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @AIRLINK_RALINK, align 4
  %93 = call i64 @memcmp(i32 %91, i32 %92, i32 3)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %88
  %96 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %97 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95, %88, %81, %74, %67, %60
  %101 = load i8*, i8** @HT_IOT_PEER_RALINK, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  br label %137

104:                                              ; preds = %95
  %105 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %106 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %104
  %110 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %111 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @DLINK_ATHEROS, align 4
  %114 = call i64 @memcmp(i32 %112, i32 %113, i32 3)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109, %104
  %117 = load i8*, i8** @HT_IOT_PEER_ATHEROS, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  br label %136

120:                                              ; preds = %109
  %121 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %122 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @CISCO_BROADCOM, align 4
  %125 = call i64 @memcmp(i32 %123, i32 %124, i32 3)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load i8*, i8** @HT_IOT_PEER_CISCO, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  br label %135

131:                                              ; preds = %120
  %132 = load i8*, i8** @HT_IOT_PEER_UNKNOWN, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %131, %127
  br label %136

136:                                              ; preds = %135, %116
  br label %137

137:                                              ; preds = %136, %100
  br label %138

138:                                              ; preds = %137, %56
  br label %139

139:                                              ; preds = %138, %24
  br label %140

140:                                              ; preds = %139, %15
  %141 = load i32, i32* @IEEE80211_DL_IOT, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @IEEE80211_DEBUG(i32 %141, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %144)
  ret void
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @IEEE80211_DEBUG(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
