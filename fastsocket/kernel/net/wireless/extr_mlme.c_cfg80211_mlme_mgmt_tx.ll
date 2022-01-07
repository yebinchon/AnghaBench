; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c_cfg80211_mlme_mgmt_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c_cfg80211_mlme_mgmt_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.wireless_dev = type { i64, %struct.TYPE_14__*, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_mgmt = type { i32, i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_FCTL_STYPE = common dso_local global i32 0, align 4
@WLAN_CATEGORY_PUBLIC = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mlme_mgmt_tx(%struct.cfg80211_registered_device* %0, %struct.wireless_dev* %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4, i32* %5, i64 %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.cfg80211_registered_device*, align 8
  %13 = alloca %struct.wireless_dev*, align 8
  %14 = alloca %struct.ieee80211_channel*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.ieee80211_mgmt*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %12, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %13, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %26 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %25, i32 0, i32 2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %10
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %212

34:                                               ; preds = %10
  %35 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %36 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  br label %212

44:                                               ; preds = %34
  %45 = load i64, i64* %18, align 8
  %46 = icmp ult i64 %45, 25
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %212

50:                                               ; preds = %44
  %51 = load i32*, i32** %17, align 8
  %52 = bitcast i32* %51 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %52, %struct.ieee80211_mgmt** %22, align 8
  %53 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %54 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ieee80211_is_mgmt(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  br label %212

61:                                               ; preds = %50
  %62 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %63 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = load i32, i32* @IEEE80211_FCTL_STYPE, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %23, align 4
  %68 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %69 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %68, i32 0, i32 2
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %74 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %23, align 4
  %80 = ashr i32 %79, 4
  %81 = call i32 @BIT(i32 %80)
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %61
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %11, align 4
  br label %212

87:                                               ; preds = %61
  %88 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %89 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @ieee80211_is_action(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %189

93:                                               ; preds = %87
  %94 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %95 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @WLAN_CATEGORY_PUBLIC, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %189

101:                                              ; preds = %93
  store i32 0, i32* %24, align 4
  %102 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %103 = call i32 @wdev_lock(%struct.wireless_dev* %102)
  %104 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %105 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  switch i64 %106, label %178 [
    i64 135, label %107
    i64 128, label %107
    i64 131, label %107
    i64 134, label %152
    i64 129, label %152
    i64 133, label %152
    i64 132, label %164
    i64 130, label %177
  ]

107:                                              ; preds = %101, %101, %101
  %108 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %109 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %108, i32 0, i32 1
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = icmp ne %struct.TYPE_14__* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @ENOTCONN, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %24, align 4
  br label %181

115:                                              ; preds = %107
  %116 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %117 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %123 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ether_addr_equal(i32 %121, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %115
  %128 = load i32, i32* @ENOTCONN, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %24, align 4
  br label %181

130:                                              ; preds = %115
  %131 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %132 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 135
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %181

136:                                              ; preds = %130
  %137 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %138 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %137, i32 0, i32 1
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %144 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ether_addr_equal(i32 %142, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %136
  %149 = load i32, i32* @ENOTCONN, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %24, align 4
  br label %181

151:                                              ; preds = %136
  br label %181

152:                                              ; preds = %101, %101, %101
  %153 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %154 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %157 = call i32 @wdev_address(%struct.wireless_dev* %156)
  %158 = call i32 @ether_addr_equal(i32 %155, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %152
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %24, align 4
  br label %163

163:                                              ; preds = %160, %152
  br label %181

164:                                              ; preds = %101
  %165 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %166 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %169 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ether_addr_equal(i32 %167, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %164
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %24, align 4
  br label %181

176:                                              ; preds = %164
  br label %181

177:                                              ; preds = %101
  br label %178

178:                                              ; preds = %101, %177
  %179 = load i32, i32* @EOPNOTSUPP, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %24, align 4
  br label %181

181:                                              ; preds = %178, %176, %173, %163, %151, %148, %135, %127, %112
  %182 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %183 = call i32 @wdev_unlock(%struct.wireless_dev* %182)
  %184 = load i32, i32* %24, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i32, i32* %24, align 4
  store i32 %187, i32* %11, align 4
  br label %212

188:                                              ; preds = %181
  br label %189

189:                                              ; preds = %188, %93, %87
  %190 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %191 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %194 = call i32 @wdev_address(%struct.wireless_dev* %193)
  %195 = call i32 @ether_addr_equal(i32 %192, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %189
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %11, align 4
  br label %212

200:                                              ; preds = %189
  %201 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %202 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %203 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* %16, align 4
  %206 = load i32*, i32** %17, align 8
  %207 = load i64, i64* %18, align 8
  %208 = load i32, i32* %19, align 4
  %209 = load i32, i32* %20, align 4
  %210 = load i32*, i32** %21, align 8
  %211 = call i32 @rdev_mgmt_tx(%struct.cfg80211_registered_device* %201, %struct.wireless_dev* %202, %struct.ieee80211_channel* %203, i32 %204, i32 %205, i32* %206, i64 %207, i32 %208, i32 %209, i32* %210)
  store i32 %211, i32* %11, align 4
  br label %212

212:                                              ; preds = %200, %197, %186, %84, %58, %47, %41, %31
  %213 = load i32, i32* %11, align 4
  ret i32 %213
}

declare dso_local i32 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @wdev_address(%struct.wireless_dev*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @rdev_mgmt_tx(%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.ieee80211_channel*, i32, i32, i32*, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
