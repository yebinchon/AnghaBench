; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_key.c_ieee80211_key_replace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_key.c_ieee80211_key_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32*, i32, i32, i32, i32, i32 }
%struct.sta_info = type { i32*, i32 }
%struct.ieee80211_key = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sta_info*, i32, %struct.ieee80211_key*, %struct.ieee80211_key*)* @ieee80211_key_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_key_replace(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, i32 %2, %struct.ieee80211_key* %3, %struct.ieee80211_key* %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_key*, align 8
  %10 = alloca %struct.ieee80211_key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.sta_info* %1, %struct.sta_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_key* %3, %struct.ieee80211_key** %9, align 8
  store %struct.ieee80211_key* %4, %struct.ieee80211_key** %10, align 8
  %15 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %16 = icmp ne %struct.ieee80211_key* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %19 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %18, i32 0, i32 0
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %20, i32 0, i32 5
  %22 = call i32 @list_add_tail(i32* %19, i32* %21)
  br label %23

23:                                               ; preds = %17, %5
  %24 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %25 = icmp ne %struct.sta_info* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %34 = call i32 @rcu_assign_pointer(i32 %32, %struct.ieee80211_key* %33)
  br label %215

35:                                               ; preds = %26, %23
  %36 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %37 = icmp ne %struct.sta_info* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %40 = icmp ne %struct.ieee80211_key* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %43 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  br label %51

46:                                               ; preds = %38
  %47 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %48 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %60 = call i32 @rcu_assign_pointer(i32 %58, %struct.ieee80211_key* %59)
  br label %214

61:                                               ; preds = %35
  %62 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %63 = icmp ne %struct.ieee80211_key* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %66 = icmp ne %struct.ieee80211_key* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %69 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %71, %75
  br label %77

77:                                               ; preds = %67, %64, %61
  %78 = phi i1 [ false, %64 ], [ false, %61 ], [ %76, %67 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @WARN_ON(i32 %79)
  %81 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %82 = icmp ne %struct.ieee80211_key* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %85 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %11, align 4
  br label %93

88:                                               ; preds = %77
  %89 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %90 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %95 = icmp ne %struct.ieee80211_key* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %98 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %99 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %102 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.ieee80211_key* @key_mtx_dereference(i32 %100, i32 %103)
  %105 = icmp eq %struct.ieee80211_key* %97, %104
  br label %106

106:                                              ; preds = %96, %93
  %107 = phi i1 [ false, %93 ], [ %105, %96 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %12, align 4
  %109 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %110 = icmp ne %struct.ieee80211_key* %109, null
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %113 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %114 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %117 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call %struct.ieee80211_key* @key_mtx_dereference(i32 %115, i32 %118)
  %120 = icmp eq %struct.ieee80211_key* %112, %119
  br label %121

121:                                              ; preds = %111, %106
  %122 = phi i1 [ false, %106 ], [ %120, %111 ]
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %13, align 4
  %124 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %125 = icmp ne %struct.ieee80211_key* %124, null
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %128 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %129 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %132 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call %struct.ieee80211_key* @key_mtx_dereference(i32 %130, i32 %133)
  %135 = icmp eq %struct.ieee80211_key* %127, %134
  br label %136

136:                                              ; preds = %126, %121
  %137 = phi i1 [ false, %121 ], [ %135, %126 ]
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %143 = icmp ne %struct.ieee80211_key* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %146 = call i32 @__ieee80211_set_default_key(%struct.ieee80211_sub_if_data* %145, i32 -1, i32 1, i32 0)
  br label %147

147:                                              ; preds = %144, %141, %136
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %152 = icmp ne %struct.ieee80211_key* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %155 = call i32 @__ieee80211_set_default_key(%struct.ieee80211_sub_if_data* %154, i32 -1, i32 0, i32 1)
  br label %156

156:                                              ; preds = %153, %150, %147
  %157 = load i32, i32* %14, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %161 = icmp ne %struct.ieee80211_key* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %164 = call i32 @__ieee80211_set_default_mgmt_key(%struct.ieee80211_sub_if_data* %163, i32 -1)
  br label %165

165:                                              ; preds = %162, %159, %156
  %166 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %167 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %174 = call i32 @rcu_assign_pointer(i32 %172, %struct.ieee80211_key* %173)
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %165
  %178 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %179 = icmp ne %struct.ieee80211_key* %178, null
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %182 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %183 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @__ieee80211_set_default_key(%struct.ieee80211_sub_if_data* %181, i32 %185, i32 1, i32 0)
  br label %187

187:                                              ; preds = %180, %177, %165
  %188 = load i32, i32* %13, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %187
  %191 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %192 = icmp ne %struct.ieee80211_key* %191, null
  br i1 %192, label %193, label %200

193:                                              ; preds = %190
  %194 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %195 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %196 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @__ieee80211_set_default_key(%struct.ieee80211_sub_if_data* %194, i32 %198, i32 0, i32 1)
  br label %200

200:                                              ; preds = %193, %190, %187
  %201 = load i32, i32* %14, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %200
  %204 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %205 = icmp ne %struct.ieee80211_key* %204, null
  br i1 %205, label %206, label %213

206:                                              ; preds = %203
  %207 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %208 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %209 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @__ieee80211_set_default_mgmt_key(%struct.ieee80211_sub_if_data* %207, i32 %211)
  br label %213

213:                                              ; preds = %206, %203, %200
  br label %214

214:                                              ; preds = %213, %51
  br label %215

215:                                              ; preds = %214, %29
  %216 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %217 = icmp ne %struct.ieee80211_key* %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %220 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %219, i32 0, i32 0
  %221 = call i32 @list_del(i32* %220)
  br label %222

222:                                              ; preds = %218, %215
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ieee80211_key*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.ieee80211_key* @key_mtx_dereference(i32, i32) #1

declare dso_local i32 @__ieee80211_set_default_key(%struct.ieee80211_sub_if_data*, i32, i32, i32) #1

declare dso_local i32 @__ieee80211_set_default_mgmt_key(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
