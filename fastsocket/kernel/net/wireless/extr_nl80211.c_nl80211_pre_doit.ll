; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_pre_doit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_pre_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_ops = type { i32 }
%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.wireless_dev**, i32 }
%struct.wireless_dev = type { i32, i32, %struct.wireless_dev* }
%struct.cfg80211_registered_device = type { i32, i32, %struct.cfg80211_registered_device* }
%struct.net_device = type { i32, i32, %struct.net_device* }

@NL80211_FLAG_NEED_RTNL = common dso_local global i32 0, align 4
@NL80211_FLAG_NEED_WIPHY = common dso_local global i32 0, align 4
@NL80211_FLAG_NEED_NETDEV = common dso_local global i32 0, align 4
@NL80211_FLAG_NEED_WDEV = common dso_local global i32 0, align 4
@cfg80211_mutex = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_FLAG_CHECK_NETDEV_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_ops*, %struct.sk_buff*, %struct.genl_info*)* @nl80211_pre_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_pre_doit(%struct.genl_ops* %0, %struct.sk_buff* %1, %struct.genl_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.genl_ops*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca %struct.cfg80211_registered_device*, align 8
  %9 = alloca %struct.wireless_dev*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.genl_ops* %0, %struct.genl_ops** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.genl_info* %2, %struct.genl_info** %7, align 8
  %12 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %13 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NL80211_FLAG_NEED_RTNL, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 (...) @rtnl_lock()
  br label %21

21:                                               ; preds = %19, %3
  %22 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %23 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NL80211_FLAG_NEED_WIPHY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %21
  %29 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %30 = call i32 @genl_info_net(%struct.genl_info* %29)
  %31 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %32 = call %struct.wireless_dev* @cfg80211_get_dev_from_info(i32 %30, %struct.genl_info* %31)
  %33 = bitcast %struct.wireless_dev* %32 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %33, %struct.cfg80211_registered_device** %8, align 8
  %34 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %35 = bitcast %struct.cfg80211_registered_device* %34 to %struct.wireless_dev*
  %36 = call i64 @IS_ERR(%struct.wireless_dev* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @rtnl_unlock()
  br label %43

43:                                               ; preds = %41, %38
  %44 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %45 = bitcast %struct.cfg80211_registered_device* %44 to %struct.wireless_dev*
  %46 = call i32 @PTR_ERR(%struct.wireless_dev* %45)
  store i32 %46, i32* %4, align 4
  br label %193

47:                                               ; preds = %28
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %49 = bitcast %struct.cfg80211_registered_device* %48 to %struct.wireless_dev*
  %50 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %51 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %50, i32 0, i32 0
  %52 = load %struct.wireless_dev**, %struct.wireless_dev*** %51, align 8
  %53 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %52, i64 0
  store %struct.wireless_dev* %49, %struct.wireless_dev** %53, align 8
  br label %192

54:                                               ; preds = %21
  %55 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %56 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NL80211_FLAG_NEED_NETDEV, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %63 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NL80211_FLAG_NEED_WDEV, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %191

68:                                               ; preds = %61, %54
  %69 = call i32 @mutex_lock(i32* @cfg80211_mutex)
  %70 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %71 = call i32 @genl_info_net(%struct.genl_info* %70)
  %72 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %73 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.wireless_dev* @__cfg80211_wdev_from_attrs(i32 %71, i32 %74)
  store %struct.wireless_dev* %75, %struct.wireless_dev** %9, align 8
  %76 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %77 = call i64 @IS_ERR(%struct.wireless_dev* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %68
  %80 = call i32 @mutex_unlock(i32* @cfg80211_mutex)
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 (...) @rtnl_unlock()
  br label %85

85:                                               ; preds = %83, %79
  %86 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %87 = call i32 @PTR_ERR(%struct.wireless_dev* %86)
  store i32 %87, i32* %4, align 4
  br label %193

88:                                               ; preds = %68
  %89 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %90 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %89, i32 0, i32 2
  %91 = load %struct.wireless_dev*, %struct.wireless_dev** %90, align 8
  %92 = bitcast %struct.wireless_dev* %91 to %struct.net_device*
  store %struct.net_device* %92, %struct.net_device** %10, align 8
  %93 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %94 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.wireless_dev* @wiphy_to_dev(i32 %95)
  %97 = bitcast %struct.wireless_dev* %96 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %97, %struct.cfg80211_registered_device** %8, align 8
  %98 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %99 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @NL80211_FLAG_NEED_NETDEV, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %88
  %105 = load %struct.net_device*, %struct.net_device** %10, align 8
  %106 = icmp ne %struct.net_device* %105, null
  br i1 %106, label %116, label %107

107:                                              ; preds = %104
  %108 = call i32 @mutex_unlock(i32* @cfg80211_mutex)
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = call i32 (...) @rtnl_unlock()
  br label %113

113:                                              ; preds = %111, %107
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %193

116:                                              ; preds = %104
  %117 = load %struct.net_device*, %struct.net_device** %10, align 8
  %118 = bitcast %struct.net_device* %117 to %struct.wireless_dev*
  %119 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %120 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %119, i32 0, i32 0
  %121 = load %struct.wireless_dev**, %struct.wireless_dev*** %120, align 8
  %122 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %121, i64 1
  store %struct.wireless_dev* %118, %struct.wireless_dev** %122, align 8
  br label %129

123:                                              ; preds = %88
  %124 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %125 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %126 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %125, i32 0, i32 0
  %127 = load %struct.wireless_dev**, %struct.wireless_dev*** %126, align 8
  %128 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %127, i64 1
  store %struct.wireless_dev* %124, %struct.wireless_dev** %128, align 8
  br label %129

129:                                              ; preds = %123, %116
  %130 = load %struct.net_device*, %struct.net_device** %10, align 8
  %131 = icmp ne %struct.net_device* %130, null
  br i1 %131, label %132, label %157

132:                                              ; preds = %129
  %133 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %134 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @NL80211_FLAG_CHECK_NETDEV_UP, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %132
  %140 = load %struct.net_device*, %struct.net_device** %10, align 8
  %141 = bitcast %struct.net_device* %140 to %struct.wireless_dev*
  %142 = call i32 @netif_running(%struct.wireless_dev* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %139
  %145 = call i32 @mutex_unlock(i32* @cfg80211_mutex)
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = call i32 (...) @rtnl_unlock()
  br label %150

150:                                              ; preds = %148, %144
  %151 = load i32, i32* @ENETDOWN, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %193

153:                                              ; preds = %139, %132
  %154 = load %struct.net_device*, %struct.net_device** %10, align 8
  %155 = bitcast %struct.net_device* %154 to %struct.wireless_dev*
  %156 = call i32 @dev_hold(%struct.wireless_dev* %155)
  br label %180

157:                                              ; preds = %129
  %158 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %159 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @NL80211_FLAG_CHECK_NETDEV_UP, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %157
  %165 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %166 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %164
  %170 = call i32 @mutex_unlock(i32* @cfg80211_mutex)
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = call i32 (...) @rtnl_unlock()
  br label %175

175:                                              ; preds = %173, %169
  %176 = load i32, i32* @ENETDOWN, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %4, align 4
  br label %193

178:                                              ; preds = %164
  br label %179

179:                                              ; preds = %178, %157
  br label %180

180:                                              ; preds = %179, %153
  %181 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %182 = bitcast %struct.cfg80211_registered_device* %181 to %struct.wireless_dev*
  %183 = call i32 @cfg80211_lock_rdev(%struct.wireless_dev* %182)
  %184 = call i32 @mutex_unlock(i32* @cfg80211_mutex)
  %185 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %186 = bitcast %struct.cfg80211_registered_device* %185 to %struct.wireless_dev*
  %187 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %188 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %187, i32 0, i32 0
  %189 = load %struct.wireless_dev**, %struct.wireless_dev*** %188, align 8
  %190 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %189, i64 0
  store %struct.wireless_dev* %186, %struct.wireless_dev** %190, align 8
  br label %191

191:                                              ; preds = %180, %61
  br label %192

192:                                              ; preds = %191, %47
  store i32 0, i32* %4, align 4
  br label %193

193:                                              ; preds = %192, %175, %150, %113, %85, %43
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.wireless_dev* @cfg80211_get_dev_from_info(i32, %struct.genl_info*) #1

declare dso_local i32 @genl_info_net(%struct.genl_info*) #1

declare dso_local i64 @IS_ERR(%struct.wireless_dev*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @PTR_ERR(%struct.wireless_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wireless_dev* @__cfg80211_wdev_from_attrs(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.wireless_dev* @wiphy_to_dev(i32) #1

declare dso_local i32 @netif_running(%struct.wireless_dev*) #1

declare dso_local i32 @dev_hold(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_lock_rdev(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
