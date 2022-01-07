; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_key.c_ieee80211_key_enable_hw_accel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_key.c_ieee80211_key_enable_hw_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { %struct.TYPE_13__, i32, %struct.TYPE_11__*, %struct.ieee80211_sub_if_data*, %struct.sta_info* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.sta_info = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }

@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_PER_STA_GTK = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@SET_KEY = common dso_local global i32 0, align 4
@KEY_FLAG_UPLOADED_TO_HARDWARE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PUT_IV_SPACE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"failed to set key (%d, %pM) to hardware (%d)\0A\00", align 1
@bcast_addr = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_key*)* @ieee80211_key_enable_hw_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_key_enable_hw_accel(%struct.ieee80211_key* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_key*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_key* %0, %struct.ieee80211_key** %3, align 8
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %8, i32 0, i32 2
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %178

17:                                               ; preds = %1
  %18 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %18, i32 0, i32 2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = call i32 @assert_key_lock(%struct.TYPE_11__* %20)
  %22 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %22, i32 0, i32 4
  %24 = load %struct.sta_info*, %struct.sta_info** %23, align 8
  store %struct.sta_info* %24, %struct.sta_info** %5, align 8
  %25 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %26 = icmp ne %struct.sta_info* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %17
  %28 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %27
  %36 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %36, i32 0, i32 2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IEEE80211_HW_SUPPORTS_PER_STA_GTK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %178

46:                                               ; preds = %35, %27, %17
  %47 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %48 = icmp ne %struct.sta_info* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %178

55:                                               ; preds = %49, %46
  %56 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %57 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %56, i32 0, i32 3
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %57, align 8
  store %struct.ieee80211_sub_if_data* %58, %struct.ieee80211_sub_if_data** %4, align 8
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %55
  %66 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %67 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  br label %178

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %55
  %76 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %77 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %76, i32 0, i32 2
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = load i32, i32* @SET_KEY, align 4
  %80 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %81 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %82 = icmp ne %struct.sta_info* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %85 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %84, i32 0, i32 0
  br label %87

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %83
  %88 = phi %struct.TYPE_12__* [ %85, %83 ], [ null, %86 ]
  %89 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %90 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %89, i32 0, i32 0
  %91 = call i32 @drv_set_key(%struct.TYPE_11__* %78, i32 %79, %struct.ieee80211_sub_if_data* %80, %struct.TYPE_12__* %88, %struct.TYPE_13__* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %148, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* @KEY_FLAG_UPLOADED_TO_HARDWARE, align 4
  %96 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %97 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %101 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %128, label %107

107:                                              ; preds = %94
  %108 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %109 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %107
  %116 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %117 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %115
  %124 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %125 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %123, %115, %107, %94
  %129 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %130 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %128
  %137 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %138 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br label %144

144:                                              ; preds = %136, %128
  %145 = phi i1 [ false, %128 ], [ %143, %136 ]
  %146 = zext i1 %145 to i32
  %147 = call i32 @WARN_ON(i32 %146)
  store i32 0, i32* %2, align 4
  br label %187

148:                                              ; preds = %87
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @ENOSPC, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp ne i32 %149, %151
  br i1 %152, label %153, label %177

153:                                              ; preds = %148
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @EOPNOTSUPP, align 4
  %156 = sub nsw i32 0, %155
  %157 = icmp ne i32 %154, %156
  br i1 %157, label %158, label %177

158:                                              ; preds = %153
  %159 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %160 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %161 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %165 = icmp ne %struct.sta_info* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %158
  %167 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %168 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  br label %173

171:                                              ; preds = %158
  %172 = load i32, i32* @bcast_addr, align 4
  br label %173

173:                                              ; preds = %171, %166
  %174 = phi i32 [ %170, %166 ], [ %172, %171 ]
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @sdata_err(%struct.ieee80211_sub_if_data* %159, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %163, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %153, %148
  br label %178

178:                                              ; preds = %177, %73, %54, %45, %16
  %179 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %180 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  switch i32 %182, label %184 [
    i32 128, label %183
    i32 129, label %183
    i32 130, label %183
    i32 131, label %183
    i32 132, label %183
  ]

183:                                              ; preds = %178, %178, %178, %178, %178
  store i32 0, i32* %2, align 4
  br label %187

184:                                              ; preds = %178
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %184, %183, %144
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @assert_key_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @drv_set_key(%struct.TYPE_11__*, i32, %struct.ieee80211_sub_if_data*, %struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sdata_err(%struct.ieee80211_sub_if_data*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
