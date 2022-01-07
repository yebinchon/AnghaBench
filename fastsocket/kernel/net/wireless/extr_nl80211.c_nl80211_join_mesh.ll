; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_join_mesh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_join_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { i32 }
%struct.cfg80211_registered_device = type opaque
%struct.mesh_config = type { i32, i32, i32, %struct.TYPE_2__, i64, i32, i64, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.mesh_setup = type { i32, i32, i32, %struct.TYPE_2__, i64, i32, i64, i32 }

@default_mesh_config = common dso_local global i32 0, align 4
@default_mesh_setup = common dso_local global i32 0, align 4
@NL80211_ATTR_MESH_CONFIG = common dso_local global i64 0, align 8
@NL80211_ATTR_MESH_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_MCAST_RATE = common dso_local global i64 0, align 8
@NL80211_ATTR_BEACON_INTERVAL = common dso_local global i64 0, align 8
@NL80211_ATTR_DTIM_PERIOD = common dso_local global i64 0, align 8
@NL80211_ATTR_MESH_SETUP = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_join_mesh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_join_mesh(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mesh_config, align 8
  %9 = alloca %struct.mesh_setup, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 1
  %13 = load %struct.net_device**, %struct.net_device*** %12, align 8
  %14 = getelementptr inbounds %struct.net_device*, %struct.net_device** %13, i64 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  %16 = bitcast %struct.net_device* %15 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %16, %struct.cfg80211_registered_device** %6, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 1
  %19 = load %struct.net_device**, %struct.net_device*** %18, align 8
  %20 = getelementptr inbounds %struct.net_device*, %struct.net_device** %19, i64 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %7, align 8
  %22 = bitcast %struct.mesh_config* %8 to %struct.mesh_setup*
  %23 = call i32 @memcpy(%struct.mesh_setup* %22, i32* @default_mesh_config, i32 56)
  %24 = call i32 @memcpy(%struct.mesh_setup* %9, i32* @default_mesh_setup, i32 56)
  %25 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @NL80211_ATTR_MESH_CONFIG, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %34 = bitcast %struct.mesh_config* %8 to %struct.mesh_setup*
  %35 = call i32 @nl80211_parse_mesh_config(%struct.genl_info* %33, %struct.mesh_setup* %34, i32* null)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %210

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %43 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %51 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @nla_len(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %49, %41
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %210

61:                                               ; preds = %49
  %62 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %63 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @nla_data(i64 %67)
  %69 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 7
  store i32 %68, i32* %69, align 8
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @nla_len(i64 %75)
  %77 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 6
  store i64 %76, i64* %77, align 8
  %78 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %79 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @NL80211_ATTR_MCAST_RATE, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %61
  %86 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %87 = bitcast %struct.cfg80211_registered_device* %86 to %struct.net_device*
  %88 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %91 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* @NL80211_ATTR_MCAST_RATE, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = call i8* @nla_get_u32(i64 %95)
  %97 = call i32 @nl80211_parse_mcast_rate(%struct.net_device* %87, i32 %89, i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %85
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %210

102:                                              ; preds = %85, %61
  %103 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %104 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* @NL80211_ATTR_BEACON_INTERVAL, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %102
  %111 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %112 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* @NL80211_ATTR_BEACON_INTERVAL, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @nla_get_u32(i64 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 0
  store i32 %118, i32* %119, align 8
  %120 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %121, 10
  br i1 %122, label %127, label %123

123:                                              ; preds = %110
  %124 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %125, 10000
  br i1 %126, label %127, label %130

127:                                              ; preds = %123, %110
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %210

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %102
  %132 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %133 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* @NL80211_ATTR_DTIM_PERIOD, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %131
  %140 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %141 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* @NL80211_ATTR_DTIM_PERIOD, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = call i8* @nla_get_u32(i64 %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 1
  store i32 %147, i32* %148, align 4
  %149 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %150, 1
  br i1 %151, label %156, label %152

152:                                              ; preds = %139
  %153 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, 100
  br i1 %155, label %156, label %159

156:                                              ; preds = %152, %139
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %210

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %159, %131
  %161 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %162 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load i64, i64* @NL80211_ATTR_MESH_SETUP, align 8
  %165 = getelementptr inbounds i64, i64* %163, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %160
  %169 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %170 = call i32 @nl80211_parse_mesh_setup(%struct.genl_info* %169, %struct.mesh_setup* %9)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %3, align 4
  br label %210

175:                                              ; preds = %168
  br label %176

176:                                              ; preds = %175, %160
  %177 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %8, i32 0, i32 2
  store i32 0, i32* %181, align 8
  br label %182

182:                                              ; preds = %180, %176
  %183 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %184 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %187 = getelementptr inbounds i64, i64* %185, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %182
  %191 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %192 = bitcast %struct.cfg80211_registered_device* %191 to %struct.net_device*
  %193 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %194 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 3
  %195 = call i32 @nl80211_parse_chandef(%struct.net_device* %192, %struct.genl_info* %193, %struct.TYPE_2__* %194)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %190
  %199 = load i32, i32* %10, align 4
  store i32 %199, i32* %3, align 4
  br label %210

200:                                              ; preds = %190
  br label %204

201:                                              ; preds = %182
  %202 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %9, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  store i32* null, i32** %203, align 8
  br label %204

204:                                              ; preds = %201, %200
  %205 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %206 = bitcast %struct.cfg80211_registered_device* %205 to %struct.net_device*
  %207 = load %struct.net_device*, %struct.net_device** %7, align 8
  %208 = bitcast %struct.mesh_config* %8 to %struct.mesh_setup*
  %209 = call i32 @cfg80211_join_mesh(%struct.net_device* %206, %struct.net_device* %207, %struct.mesh_setup* %9, %struct.mesh_setup* %208)
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %204, %198, %173, %156, %127, %99, %58, %38
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @memcpy(%struct.mesh_setup*, i32*, i32) #1

declare dso_local i32 @nl80211_parse_mesh_config(%struct.genl_info*, %struct.mesh_setup*, i32*) #1

declare dso_local i64 @nla_len(i64) #1

declare dso_local i32 @nla_data(i64) #1

declare dso_local i32 @nl80211_parse_mcast_rate(%struct.net_device*, i32, i8*) #1

declare dso_local i8* @nla_get_u32(i64) #1

declare dso_local i32 @nl80211_parse_mesh_setup(%struct.genl_info*, %struct.mesh_setup*) #1

declare dso_local i32 @nl80211_parse_chandef(%struct.net_device*, %struct.genl_info*, %struct.TYPE_2__*) #1

declare dso_local i32 @cfg80211_join_mesh(%struct.net_device*, %struct.net_device*, %struct.mesh_setup*, %struct.mesh_setup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
