; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_sta_info_move_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_sta_info_move_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, i32, %struct.TYPE_13__*, i32, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid state %d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"moving STA %pM to state %d\0A\00", align 1
@WLAN_STA_INSERTED = common dso_local global i32 0, align 4
@WLAN_STA_AUTH = common dso_local global i32 0, align 4
@WLAN_STA_ASSOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP_VLAN = common dso_local global i32 0, align 4
@WLAN_STA_AUTHORIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sta_info_move_state(%struct.sta_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %9 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %242

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %62 [
    i32 128, label %16
    i32 130, label %25
    i32 131, label %39
    i32 129, label %53
  ]

16:                                               ; preds = %14
  %17 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 130
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %242

24:                                               ; preds = %16
  br label %67

25:                                               ; preds = %14
  %26 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 128
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 131
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %242

38:                                               ; preds = %30, %25
  br label %67

39:                                               ; preds = %14
  %40 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 130
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 129
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %242

52:                                               ; preds = %44, %39
  br label %67

53:                                               ; preds = %14
  %54 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 131
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %242

61:                                               ; preds = %53
  br label %67

62:                                               ; preds = %14
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %242

67:                                               ; preds = %61, %52, %38, %24
  %68 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %69 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %68, i32 0, i32 2
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %72 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @sta_dbg(%struct.TYPE_13__* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %78 = load i32, i32* @WLAN_STA_INSERTED, align 4
  %79 = call i64 @test_sta_flag(%struct.sta_info* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %67
  %82 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %83 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %86 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %85, i32 0, i32 2
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %89 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %90 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @drv_sta_state(i32 %84, %struct.TYPE_13__* %87, %struct.sta_info* %88, i32 %91, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %81
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %242

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %98, %67
  %100 = load i32, i32* %5, align 4
  switch i32 %100, label %237 [
    i32 128, label %101
    i32 130, label %112
    i32 131, label %134
    i32 129, label %191
  ]

101:                                              ; preds = %99
  %102 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %103 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 130
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* @WLAN_STA_AUTH, align 4
  %108 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %109 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %108, i32 0, i32 1
  %110 = call i32 @clear_bit(i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %106, %101
  br label %238

112:                                              ; preds = %99
  %113 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %114 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 128
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i32, i32* @WLAN_STA_AUTH, align 4
  %119 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %120 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %119, i32 0, i32 1
  %121 = call i32 @set_bit(i32 %118, i32* %120)
  br label %133

122:                                              ; preds = %112
  %123 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %124 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 131
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %129 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %130 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %129, i32 0, i32 1
  %131 = call i32 @clear_bit(i32 %128, i32* %130)
  br label %132

132:                                              ; preds = %127, %122
  br label %133

133:                                              ; preds = %132, %117
  br label %238

134:                                              ; preds = %99
  %135 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %136 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 130
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %141 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %142 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %141, i32 0, i32 1
  %143 = call i32 @set_bit(i32 %140, i32* %142)
  br label %190

144:                                              ; preds = %134
  %145 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %146 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 129
  br i1 %148, label %149, label %189

149:                                              ; preds = %144
  %150 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %151 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %150, i32 0, i32 2
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %176, label %158

158:                                              ; preds = %149
  %159 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %160 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %159, i32 0, i32 2
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @NL80211_IFTYPE_AP_VLAN, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %184

167:                                              ; preds = %158
  %168 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %169 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %168, i32 0, i32 2
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %167, %149
  %177 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %178 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %177, i32 0, i32 2
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = call i32 @atomic_dec(i32* %182)
  br label %184

184:                                              ; preds = %176, %167, %158
  %185 = load i32, i32* @WLAN_STA_AUTHORIZED, align 4
  %186 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %187 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %186, i32 0, i32 1
  %188 = call i32 @clear_bit(i32 %185, i32* %187)
  br label %189

189:                                              ; preds = %184, %144
  br label %190

190:                                              ; preds = %189, %139
  br label %238

191:                                              ; preds = %99
  %192 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %193 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 131
  br i1 %195, label %196, label %236

196:                                              ; preds = %191
  %197 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %198 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %197, i32 0, i32 2
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %223, label %205

205:                                              ; preds = %196
  %206 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %207 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %206, i32 0, i32 2
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @NL80211_IFTYPE_AP_VLAN, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %231

214:                                              ; preds = %205
  %215 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %216 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %215, i32 0, i32 2
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %231, label %223

223:                                              ; preds = %214, %196
  %224 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %225 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %224, i32 0, i32 2
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = call i32 @atomic_inc(i32* %229)
  br label %231

231:                                              ; preds = %223, %214, %205
  %232 = load i32, i32* @WLAN_STA_AUTHORIZED, align 4
  %233 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %234 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %233, i32 0, i32 1
  %235 = call i32 @set_bit(i32 %232, i32* %234)
  br label %236

236:                                              ; preds = %231, %191
  br label %238

237:                                              ; preds = %99
  br label %238

238:                                              ; preds = %237, %236, %190, %133, %111
  %239 = load i32, i32* %5, align 4
  %240 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %241 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  store i32 0, i32* %3, align 4
  br label %242

242:                                              ; preds = %238, %96, %62, %58, %49, %35, %21, %13
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @sta_dbg(%struct.TYPE_13__*, i8*, i32, i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @drv_sta_state(i32, %struct.TYPE_13__*, %struct.sta_info*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
