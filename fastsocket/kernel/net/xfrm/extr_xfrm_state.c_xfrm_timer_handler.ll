; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_timer_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, %struct.TYPE_10__, %struct.TYPE_8__, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.net = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@LONG_MAX = common dso_local global i64 0, align 8
@XFRM_STATE_DEAD = common dso_local global i64 0, align 8
@XFRM_STATE_EXPIRED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@XFRM_STATE_ACQ = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @xfrm_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_timer_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = inttoptr i64 %13 to %struct.xfrm_state*
  store %struct.xfrm_state* %14, %struct.xfrm_state** %3, align 8
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %16 = call %struct.net* @xs_net(%struct.xfrm_state* %15)
  store %struct.net* %16, %struct.net** %4, align 8
  %17 = call i64 (...) @get_seconds()
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* @LONG_MAX, align 8
  store i64 %18, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %20 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %23 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @XFRM_STATE_DEAD, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %241

29:                                               ; preds = %1
  %30 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %31 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @XFRM_STATE_EXPIRED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %194

37:                                               ; preds = %29
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %39 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %49 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %47, %51
  %53 = load i64, i64* %5, align 8
  %54 = sub i64 %52, %53
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %194

58:                                               ; preds = %43
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %62, %58
  br label %65

65:                                               ; preds = %64, %37
  %66 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %67 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %65
  %72 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %73 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %77 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %84

82:                                               ; preds = %71
  %83 = load i64, i64* %5, align 8
  br label %84

84:                                               ; preds = %82, %81
  %85 = phi i64 [ %79, %81 ], [ %83, %82 ]
  %86 = add i64 %75, %85
  %87 = load i64, i64* %5, align 8
  %88 = sub i64 %86, %87
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %10, align 8
  %90 = icmp sle i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %194

92:                                               ; preds = %84
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %6, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i64, i64* %10, align 8
  store i64 %97, i64* %6, align 8
  br label %98

98:                                               ; preds = %96, %92
  br label %99

99:                                               ; preds = %98, %65
  %100 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %101 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %181

106:                                              ; preds = %99
  %107 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %108 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %106
  %113 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %114 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %118 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %116, %120
  %122 = load i64, i64* %5, align 8
  %123 = sub i64 %121, %122
  store i64 %123, i64* %11, align 8
  %124 = load i64, i64* %11, align 8
  %125 = icmp sle i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  store i32 1, i32* %7, align 4
  br label %134

127:                                              ; preds = %112
  %128 = load i64, i64* %11, align 8
  %129 = load i64, i64* %6, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i64, i64* %11, align 8
  store i64 %132, i64* %6, align 8
  br label %133

133:                                              ; preds = %131, %127
  br label %134

134:                                              ; preds = %133, %126
  br label %135

135:                                              ; preds = %134, %106
  %136 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %137 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %170

141:                                              ; preds = %135
  %142 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %143 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %147 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  br label %154

152:                                              ; preds = %141
  %153 = load i64, i64* %5, align 8
  br label %154

154:                                              ; preds = %152, %151
  %155 = phi i64 [ %149, %151 ], [ %153, %152 ]
  %156 = add i64 %145, %155
  %157 = load i64, i64* %5, align 8
  %158 = sub i64 %156, %157
  store i64 %158, i64* %12, align 8
  %159 = load i64, i64* %12, align 8
  %160 = icmp sle i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  store i32 1, i32* %7, align 4
  br label %169

162:                                              ; preds = %154
  %163 = load i64, i64* %12, align 8
  %164 = load i64, i64* %6, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i64, i64* %12, align 8
  store i64 %167, i64* %6, align 8
  br label %168

168:                                              ; preds = %166, %162
  br label %169

169:                                              ; preds = %168, %161
  br label %170

170:                                              ; preds = %169, %135
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %173 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 8
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %179 = call i32 @km_state_expired(%struct.xfrm_state* %178, i32 0, i32 0)
  br label %180

180:                                              ; preds = %177, %170
  br label %181

181:                                              ; preds = %207, %180, %105
  %182 = load i64, i64* %6, align 8
  %183 = load i64, i64* @LONG_MAX, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %181
  %186 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %187 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %186, i32 0, i32 3
  %188 = load i64, i64* @jiffies, align 8
  %189 = load i64, i64* %6, align 8
  %190 = call i64 @make_jiffies(i64 %189)
  %191 = add nsw i64 %188, %190
  %192 = call i32 @mod_timer(i32* %187, i64 %191)
  br label %193

193:                                              ; preds = %185, %181
  br label %241

194:                                              ; preds = %91, %57, %36
  %195 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %196 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @XFRM_STATE_ACQ, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %216

201:                                              ; preds = %194
  %202 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %203 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %201
  %208 = load i64, i64* @XFRM_STATE_EXPIRED, align 8
  %209 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %210 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  store i64 %208, i64* %211, align 8
  %212 = load %struct.net*, %struct.net** %4, align 8
  %213 = getelementptr inbounds %struct.net, %struct.net* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = call i32 @wake_up(i32* %214)
  store i64 2, i64* %6, align 8
  br label %181

216:                                              ; preds = %201, %194
  %217 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %218 = call i32 @__xfrm_state_delete(%struct.xfrm_state* %217)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %230, label %221

221:                                              ; preds = %216
  %222 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %223 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %229 = call i32 @km_state_expired(%struct.xfrm_state* %228, i32 1, i32 0)
  br label %230

230:                                              ; preds = %227, %221, %216
  %231 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, i32 0, i32 1
  %236 = load i32, i32* @current, align 4
  %237 = call i32 @audit_get_loginuid(i32 %236)
  %238 = load i32, i32* @current, align 4
  %239 = call i32 @audit_get_sessionid(i32 %238)
  %240 = call i32 @xfrm_audit_state_delete(%struct.xfrm_state* %231, i32 %235, i32 %237, i32 %239, i32 0)
  br label %241

241:                                              ; preds = %230, %193, %28
  %242 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %243 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %242, i32 0, i32 0
  %244 = call i32 @spin_unlock(i32* %243)
  ret void
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @km_state_expired(%struct.xfrm_state*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @make_jiffies(i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @__xfrm_state_delete(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_audit_state_delete(%struct.xfrm_state*, i32, i32, i32, i32) #1

declare dso_local i32 @audit_get_loginuid(i32) #1

declare dso_local i32 @audit_get_sessionid(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
