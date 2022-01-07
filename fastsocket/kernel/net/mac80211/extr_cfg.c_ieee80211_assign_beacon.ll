; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_assign_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_assign_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_beacon_data = type { i32, i32, i32, i32, i32*, i32* }
%struct.beacon_data = type { i32, i32, i32*, i32* }

@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BSS_CHANGED_AP_PROBE_RESP = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.cfg80211_beacon_data*)* @ieee80211_assign_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_assign_beacon(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_beacon_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.cfg80211_beacon_data*, align 8
  %6 = alloca %struct.beacon_data*, align 8
  %7 = alloca %struct.beacon_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.cfg80211_beacon_data* %1, %struct.cfg80211_beacon_data** %5, align 8
  %13 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.beacon_data* @rtnl_dereference(i32 %18)
  store %struct.beacon_data* %19, %struct.beacon_data** %7, align 8
  %20 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %21 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.beacon_data*, %struct.beacon_data** %7, align 8
  %26 = icmp ne %struct.beacon_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %180

30:                                               ; preds = %24, %2
  %31 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %32 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %37 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %8, align 4
  br label %43

39:                                               ; preds = %30
  %40 = load %struct.beacon_data*, %struct.beacon_data** %7, align 8
  %41 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %45 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load %struct.beacon_data*, %struct.beacon_data** %7, align 8
  %50 = icmp ne %struct.beacon_data* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %53 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  br label %59

55:                                               ; preds = %48
  %56 = load %struct.beacon_data*, %struct.beacon_data** %7, align 8
  %57 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 24, %61
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %62, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.beacon_data* @kzalloc(i32 %67, i32 %68)
  store %struct.beacon_data* %69, %struct.beacon_data** %6, align 8
  %70 = load %struct.beacon_data*, %struct.beacon_data** %6, align 8
  %71 = icmp ne %struct.beacon_data* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %59
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %180

75:                                               ; preds = %59
  %76 = load %struct.beacon_data*, %struct.beacon_data** %6, align 8
  %77 = bitcast %struct.beacon_data* %76 to i32*
  %78 = getelementptr inbounds i32, i32* %77, i64 24
  %79 = load %struct.beacon_data*, %struct.beacon_data** %6, align 8
  %80 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %79, i32 0, i32 3
  store i32* %78, i32** %80, align 8
  %81 = load %struct.beacon_data*, %struct.beacon_data** %6, align 8
  %82 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load %struct.beacon_data*, %struct.beacon_data** %6, align 8
  %88 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.beacon_data*, %struct.beacon_data** %6, align 8
  %91 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.beacon_data*, %struct.beacon_data** %6, align 8
  %94 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %96 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %75
  %100 = load %struct.beacon_data*, %struct.beacon_data** %6, align 8
  %101 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %104 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @memcpy(i32* %102, i32* %105, i32 %106)
  br label %117

108:                                              ; preds = %75
  %109 = load %struct.beacon_data*, %struct.beacon_data** %6, align 8
  %110 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.beacon_data*, %struct.beacon_data** %7, align 8
  %113 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @memcpy(i32* %111, i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %108, %99
  %118 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %119 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load %struct.beacon_data*, %struct.beacon_data** %6, align 8
  %124 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %127 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @memcpy(i32* %125, i32* %128, i32 %129)
  br label %144

131:                                              ; preds = %117
  %132 = load %struct.beacon_data*, %struct.beacon_data** %7, align 8
  %133 = icmp ne %struct.beacon_data* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load %struct.beacon_data*, %struct.beacon_data** %6, align 8
  %136 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.beacon_data*, %struct.beacon_data** %7, align 8
  %139 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @memcpy(i32* %137, i32* %140, i32 %141)
  br label %143

143:                                              ; preds = %134, %131
  br label %144

144:                                              ; preds = %143, %122
  %145 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %146 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %147 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %150 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @ieee80211_set_probe_resp(%struct.ieee80211_sub_if_data* %145, i32 %148, i32 %151)
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %144
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %3, align 4
  br label %180

157:                                              ; preds = %144
  %158 = load i32, i32* %11, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i32, i32* @BSS_CHANGED_AP_PROBE_RESP, align 4
  %162 = load i32, i32* %12, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %12, align 4
  br label %164

164:                                              ; preds = %160, %157
  %165 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %166 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.beacon_data*, %struct.beacon_data** %6, align 8
  %171 = call i32 @rcu_assign_pointer(i32 %169, %struct.beacon_data* %170)
  %172 = load %struct.beacon_data*, %struct.beacon_data** %7, align 8
  %173 = icmp ne %struct.beacon_data* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %164
  %175 = load %struct.beacon_data*, %struct.beacon_data** %7, align 8
  %176 = load i32, i32* @rcu_head, align 4
  %177 = call i32 @kfree_rcu(%struct.beacon_data* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %164
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %178, %155, %72, %27
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.beacon_data* @rtnl_dereference(i32) #1

declare dso_local %struct.beacon_data* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ieee80211_set_probe_resp(%struct.ieee80211_sub_if_data*, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.beacon_data*) #1

declare dso_local i32 @kfree_rcu(%struct.beacon_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
