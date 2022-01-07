; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTIOTPeerDetermine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTIOTPeerDetermine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.ieee80211_network, %struct.TYPE_4__* }
%struct.ieee80211_network = type { i64, i32, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i8* }

@HT_IOT_PEER_REALTEK = common dso_local global i8* null, align 8
@RT_HT_CAP_USE_92SE = common dso_local global i32 0, align 4
@HT_IOT_PEER_REALTEK_92SE = common dso_local global i8* null, align 8
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
@DLINK_ATHEROS_1 = common dso_local global i32 0, align 4
@DLINK_ATHEROS_2 = common dso_local global i32 0, align 4
@HT_IOT_PEER_ATHEROS = common dso_local global i8* null, align 8
@CISCO_BROADCOM = common dso_local global i32 0, align 4
@HT_IOT_PEER_CISCO = common dso_local global i8* null, align 8
@LINKSYS_MARVELL_4400N = common dso_local global i32 0, align 4
@HT_IOT_PEER_MARVELL = common dso_local global i8* null, align 8
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
  %11 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load i8*, i8** @HT_IOT_PEER_REALTEK, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RT_HT_CAP_USE_92SE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load i8*, i8** @HT_IOT_PEER_REALTEK_92SE, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %26, %15
  br label %176

31:                                               ; preds = %1
  %32 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i8*, i8** @HT_IOT_PEER_BROADCOM, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %175

40:                                               ; preds = %31
  %41 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @UNKNOWN_BORADCOM, align 4
  %45 = call i64 @memcmp(i32 %43, i32 %44, i32 3)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %40
  %48 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @LINKSYSWRT330_LINKSYSWRT300_BROADCOM, align 4
  %52 = call i64 @memcmp(i32 %50, i32 %51, i32 3)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %47
  %55 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @LINKSYSWRT350_LINKSYSWRT150_BROADCOM, align 4
  %59 = call i64 @memcmp(i32 %57, i32 %58, i32 3)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @NETGEAR834Bv2_BROADCOM, align 4
  %66 = call i64 @memcmp(i32 %64, i32 %65, i32 3)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61, %54, %47, %40
  %69 = load i8*, i8** @HT_IOT_PEER_BROADCOM, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %174

72:                                               ; preds = %61
  %73 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %74 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BELKINF5D8233V1_RALINK, align 4
  %77 = call i64 @memcmp(i32 %75, i32 %76, i32 3)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %112, label %79

79:                                               ; preds = %72
  %80 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @BELKINF5D82334V3_RALINK, align 4
  %84 = call i64 @memcmp(i32 %82, i32 %83, i32 3)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %112, label %86

86:                                               ; preds = %79
  %87 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %88 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @PCI_RALINK, align 4
  %91 = call i64 @memcmp(i32 %89, i32 %90, i32 3)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %86
  %94 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @EDIMAX_RALINK, align 4
  %98 = call i64 @memcmp(i32 %96, i32 %97, i32 3)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %93
  %101 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %102 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @AIRLINK_RALINK, align 4
  %105 = call i64 @memcmp(i32 %103, i32 %104, i32 3)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %100
  %108 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %109 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107, %100, %93, %86, %79, %72
  %113 = load i8*, i8** @HT_IOT_PEER_RALINK, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  br label %173

116:                                              ; preds = %107
  %117 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %118 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %135, label %121

121:                                              ; preds = %116
  %122 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %123 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @DLINK_ATHEROS_1, align 4
  %126 = call i64 @memcmp(i32 %124, i32 %125, i32 3)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %130 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @DLINK_ATHEROS_2, align 4
  %133 = call i64 @memcmp(i32 %131, i32 %132, i32 3)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128, %121, %116
  %136 = load i8*, i8** @HT_IOT_PEER_ATHEROS, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  br label %172

139:                                              ; preds = %128
  %140 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %141 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @CISCO_BROADCOM, align 4
  %144 = call i64 @memcmp(i32 %142, i32 %143, i32 3)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load i8*, i8** @HT_IOT_PEER_CISCO, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  br label %171

150:                                              ; preds = %139
  %151 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %152 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @LINKSYS_MARVELL_4400N, align 4
  %155 = call i64 @memcmp(i32 %153, i32 %154, i32 3)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %150
  %158 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %159 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157, %150
  %163 = load i8*, i8** @HT_IOT_PEER_MARVELL, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  br label %170

166:                                              ; preds = %157
  %167 = load i8*, i8** @HT_IOT_PEER_UNKNOWN, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %166, %162
  br label %171

171:                                              ; preds = %170, %146
  br label %172

172:                                              ; preds = %171, %135
  br label %173

173:                                              ; preds = %172, %112
  br label %174

174:                                              ; preds = %173, %68
  br label %175

175:                                              ; preds = %174, %36
  br label %176

176:                                              ; preds = %175, %30
  %177 = load i32, i32* @IEEE80211_DL_IOT, align 4
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @IEEE80211_DEBUG(i32 %177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %180)
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
