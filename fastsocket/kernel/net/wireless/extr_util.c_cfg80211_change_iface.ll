; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_cfg80211_change_iface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_cfg80211_change_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.vif_params = type { i32 }
%struct.TYPE_7__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IFF_BRIDGE_PORT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@IFF_DONT_BRIDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_change_iface(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32 %2, i32* %3, %struct.vif_params* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.vif_params*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.vif_params* %4, %struct.vif_params** %11, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %13, align 4
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %20 = call i32 @ASSERT_RDEV_LOCK(%struct.cfg80211_registered_device* %19)
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %21, 137
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %216

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 133
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %216

32:                                               ; preds = %26
  %33 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %34 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %41 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %39, %32
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %216

51:                                               ; preds = %39
  %52 = load %struct.net_device*, %struct.net_device** %8, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IFF_BRIDGE_PORT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 139
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 131
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 134
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %61, %58
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %216

70:                                               ; preds = %64, %51
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %123

74:                                               ; preds = %70
  %75 = load %struct.net_device*, %struct.net_device** %8, align 8
  %76 = call i64 @netif_running(%struct.net_device* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %74
  %79 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %80 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %79, i32 0, i32 0
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %83 = load %struct.net_device*, %struct.net_device** %8, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @cfg80211_can_change_interface(%struct.cfg80211_registered_device* %82, %struct.TYPE_8__* %85, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %89 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %78
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %6, align 4
  br label %216

95:                                               ; preds = %78
  %96 = load %struct.net_device*, %struct.net_device** %8, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  %100 = load %struct.net_device*, %struct.net_device** %8, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* %13, align 4
  switch i32 %104, label %119 [
    i32 138, label %105
    i32 139, label %109
    i32 131, label %113
    i32 134, label %113
    i32 136, label %118
  ]

105:                                              ; preds = %95
  %106 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %107 = load %struct.net_device*, %struct.net_device** %8, align 8
  %108 = call i32 @cfg80211_stop_ap(%struct.cfg80211_registered_device* %106, %struct.net_device* %107)
  br label %120

109:                                              ; preds = %95
  %110 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %111 = load %struct.net_device*, %struct.net_device** %8, align 8
  %112 = call i32 @cfg80211_leave_ibss(%struct.cfg80211_registered_device* %110, %struct.net_device* %111, i32 0)
  br label %120

113:                                              ; preds = %95, %95
  %114 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %115 = load %struct.net_device*, %struct.net_device** %8, align 8
  %116 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %117 = call i32 @cfg80211_disconnect(%struct.cfg80211_registered_device* %114, %struct.net_device* %115, i32 %116, i32 1)
  br label %120

118:                                              ; preds = %95
  br label %120

119:                                              ; preds = %95
  br label %120

120:                                              ; preds = %119, %118, %113, %109, %105
  %121 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %122 = call i32 @cfg80211_process_rdev_events(%struct.cfg80211_registered_device* %121)
  br label %123

123:                                              ; preds = %120, %74, %70
  %124 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %125 = load %struct.net_device*, %struct.net_device** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32*, i32** %10, align 8
  %128 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %129 = call i32 @rdev_change_virtual_intf(%struct.cfg80211_registered_device* %124, %struct.net_device* %125, i32 %126, i32* %127, %struct.vif_params* %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %123
  %133 = load %struct.net_device*, %struct.net_device** %8, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 1
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %137, %138
  br label %140

140:                                              ; preds = %132, %123
  %141 = phi i1 [ false, %123 ], [ %139, %132 ]
  %142 = zext i1 %141 to i32
  %143 = call i32 @WARN_ON(i32 %142)
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %162, label %146

146:                                              ; preds = %140
  %147 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %148 = icmp ne %struct.vif_params* %147, null
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %151 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, -1
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %156 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.net_device*, %struct.net_device** %8, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 1
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  store i32 %157, i32* %161, align 4
  br label %162

162:                                              ; preds = %154, %149, %146, %140
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %196, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* @IFF_DONT_BRIDGE, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.net_device*, %struct.net_device** %8, align 8
  %169 = call %struct.TYPE_7__* @netdev_extended(%struct.net_device* %168)
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, %167
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* %9, align 4
  switch i32 %173, label %195 [
    i32 131, label %174
    i32 134, label %183
    i32 139, label %183
    i32 132, label %190
    i32 138, label %190
    i32 137, label %190
    i32 129, label %190
    i32 136, label %190
    i32 135, label %191
    i32 130, label %192
    i32 128, label %192
    i32 133, label %193
  ]

174:                                              ; preds = %165
  %175 = load %struct.net_device*, %struct.net_device** %8, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 1
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %195

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %165, %165, %182
  %184 = load i32, i32* @IFF_DONT_BRIDGE, align 4
  %185 = load %struct.net_device*, %struct.net_device** %8, align 8
  %186 = call %struct.TYPE_7__* @netdev_extended(%struct.net_device* %185)
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %184
  store i32 %189, i32* %187, align 4
  br label %195

190:                                              ; preds = %165, %165, %165, %165, %165
  br label %195

191:                                              ; preds = %165
  br label %195

192:                                              ; preds = %165, %165
  br label %195

193:                                              ; preds = %165
  %194 = call i32 @WARN_ON(i32 1)
  br label %195

195:                                              ; preds = %165, %193, %192, %191, %190, %183, %181
  br label %196

196:                                              ; preds = %195, %162
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %214, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %214

203:                                              ; preds = %199
  %204 = load %struct.net_device*, %struct.net_device** %8, align 8
  %205 = call i64 @netif_running(%struct.net_device* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %203
  %208 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @cfg80211_update_iface_num(%struct.cfg80211_registered_device* %208, i32 %209, i32 1)
  %211 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @cfg80211_update_iface_num(%struct.cfg80211_registered_device* %211, i32 %212, i32 -1)
  br label %214

214:                                              ; preds = %207, %203, %199, %196
  %215 = load i32, i32* %12, align 4
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %214, %93, %67, %48, %29, %23
  %217 = load i32, i32* %6, align 4
  ret i32 %217
}

declare dso_local i32 @ASSERT_RDEV_LOCK(%struct.cfg80211_registered_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cfg80211_can_change_interface(%struct.cfg80211_registered_device*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cfg80211_stop_ap(%struct.cfg80211_registered_device*, %struct.net_device*) #1

declare dso_local i32 @cfg80211_leave_ibss(%struct.cfg80211_registered_device*, %struct.net_device*, i32) #1

declare dso_local i32 @cfg80211_disconnect(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @cfg80211_process_rdev_events(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @rdev_change_virtual_intf(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32*, %struct.vif_params*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_7__* @netdev_extended(%struct.net_device*) #1

declare dso_local i32 @cfg80211_update_iface_num(%struct.cfg80211_registered_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
