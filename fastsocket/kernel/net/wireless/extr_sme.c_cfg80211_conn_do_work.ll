; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_conn_do_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_conn_do_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.cfg80211_connect_params }
%struct.cfg80211_connect_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cfg80211_assoc_request = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CFG80211_CONN_AUTHENTICATING = common dso_local global i32 0, align 4
@CFG80211_CONN_ASSOCIATING = common dso_local global i32 0, align 4
@NL80211_MFP_NO = common dso_local global i32 0, align 4
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wireless_dev*)* @cfg80211_conn_do_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_conn_do_work(%struct.wireless_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wireless_dev*, align 8
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.cfg80211_connect_params*, align 8
  %6 = alloca %struct.cfg80211_assoc_request, align 4
  %7 = alloca i32, align 4
  store %struct.wireless_dev* %0, %struct.wireless_dev** %3, align 8
  %8 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %9 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %10)
  store %struct.cfg80211_registered_device* %11, %struct.cfg80211_registered_device** %4, align 8
  %12 = bitcast %struct.cfg80211_assoc_request* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 40, i1 false)
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %14 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %13)
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %189

20:                                               ; preds = %1
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %22 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  store %struct.cfg80211_connect_params* %24, %struct.cfg80211_connect_params** %5, align 8
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %26 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %188 [
    i32 128, label %30
    i32 130, label %33
    i32 131, label %77
    i32 129, label %176
  ]

30:                                               ; preds = %20
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %32 = call i32 @cfg80211_conn_scan(%struct.wireless_dev* %31)
  store i32 %32, i32* %2, align 4
  br label %189

33:                                               ; preds = %20
  %34 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %35 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load i32, i32* @CFG80211_CONN_AUTHENTICATING, align 4
  %44 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %45 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %49 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %50 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %53 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %56 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %55, i32 0, i32 16
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %59 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %62 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %65 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %68 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %67, i32 0, i32 15
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %71 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %70, i32 0, i32 14
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %74 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %73, i32 0, i32 13
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @__cfg80211_mlme_auth(%struct.cfg80211_registered_device* %48, i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, i32* null, i32 0, i32 %69, i32 %72, i32 %75, i32* null, i32 0)
  store i32 %76, i32* %2, align 4
  br label %189

77:                                               ; preds = %20
  %78 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %79 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @BUG_ON(i32 %85)
  %87 = load i32, i32* @CFG80211_CONN_ASSOCIATING, align 4
  %88 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %89 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 4
  %92 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %93 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %77
  %99 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %100 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %6, i32 0, i32 9
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %98, %77
  %106 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %107 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %106, i32 0, i32 12
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %6, i32 0, i32 8
  store i32 %108, i32* %109, align 4
  %110 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %111 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %6, i32 0, i32 7
  store i32 %112, i32* %113, align 4
  %114 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %115 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @NL80211_MFP_NO, align 4
  %118 = icmp ne i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %6, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %122 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %6, i32 0, i32 6
  store i32 %123, i32* %124, align 4
  %125 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %126 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %6, i32 0, i32 5
  store i32 %127, i32* %128, align 4
  %129 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %130 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %6, i32 0, i32 4
  store i32 %131, i32* %132, align 4
  %133 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %134 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %6, i32 0, i32 3
  store i32 %135, i32* %136, align 4
  %137 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %138 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %6, i32 0, i32 2
  store i32 %139, i32* %140, align 4
  %141 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %142 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %6, i32 0, i32 1
  store i32 %143, i32* %144, align 4
  %145 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %146 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %147 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %150 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %153 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %156 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %159 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @__cfg80211_mlme_assoc(%struct.cfg80211_registered_device* %145, i32 %148, i32 %151, i32 %154, i32 %157, i32 %160, %struct.cfg80211_assoc_request* %6)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %105
  %165 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %166 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %167 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %170 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %173 = call i32 @__cfg80211_mlme_deauth(%struct.cfg80211_registered_device* %165, i32 %168, i32 %171, i32* null, i32 0, i32 %172, i32 0)
  br label %174

174:                                              ; preds = %164, %105
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %2, align 4
  br label %189

176:                                              ; preds = %20
  %177 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %178 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %179 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %182 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %185 = call i32 @__cfg80211_mlme_deauth(%struct.cfg80211_registered_device* %177, i32 %180, i32 %183, i32* null, i32 0, i32 %184, i32 0)
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %2, align 4
  br label %189

188:                                              ; preds = %20
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %188, %176, %174, %33, %30, %19
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_conn_scan(%struct.wireless_dev*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__cfg80211_mlme_auth(%struct.cfg80211_registered_device*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @__cfg80211_mlme_assoc(%struct.cfg80211_registered_device*, i32, i32, i32, i32, i32, %struct.cfg80211_assoc_request*) #1

declare dso_local i32 @__cfg80211_mlme_deauth(%struct.cfg80211_registered_device*, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
