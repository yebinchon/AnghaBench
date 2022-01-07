; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_bundle_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_bundle_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32 }
%struct.xfrm_dst = type { i64, i64, i64, i64, i64, %struct.TYPE_11__, %struct.dst_entry*, i32, %struct.TYPE_9__**, i32*, i64, i32 }
%struct.TYPE_11__ = type { %struct.dst_entry }
%struct.dst_entry = type { i64, i64*, %struct.TYPE_12__*, %struct.dst_entry*, i64, %struct.dst_entry* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.flowi = type { i32 }

@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@XFRM_MODE_FLAG_TUNNEL = common dso_local global i32 0, align 4
@RTAX_MTU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_bundle_ok(%struct.xfrm_policy* %0, %struct.xfrm_dst* %1, %struct.flowi* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfrm_policy*, align 8
  %8 = alloca %struct.xfrm_dst*, align 8
  %9 = alloca %struct.flowi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dst_entry*, align 8
  %13 = alloca %struct.xfrm_dst*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.xfrm_dst*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %7, align 8
  store %struct.xfrm_dst* %1, %struct.xfrm_dst** %8, align 8
  store %struct.flowi* %2, %struct.flowi** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.xfrm_dst*, %struct.xfrm_dst** %8, align 8
  %17 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store %struct.dst_entry* %18, %struct.dst_entry** %12, align 8
  %19 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %20 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %19, i32 0, i32 5
  %21 = load %struct.dst_entry*, %struct.dst_entry** %20, align 8
  %22 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %23 = bitcast %struct.dst_entry* %22 to %struct.xfrm_dst*
  %24 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dst_check(%struct.dst_entry* %21, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %5
  %29 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %30 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %35 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @netif_running(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33, %5
  store i32 0, i32* %6, align 4
  br label %239

40:                                               ; preds = %33, %28
  store %struct.xfrm_dst* null, %struct.xfrm_dst** %13, align 8
  br label %41

41:                                               ; preds = %180, %40
  %42 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %43 = bitcast %struct.dst_entry* %42 to %struct.xfrm_dst*
  store %struct.xfrm_dst* %43, %struct.xfrm_dst** %15, align 8
  %44 = load %struct.flowi*, %struct.flowi** %9, align 8
  %45 = icmp ne %struct.flowi* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %48 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %47, i32 0, i32 2
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = load %struct.flowi*, %struct.flowi** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @xfrm_selector_match(i32* %50, %struct.flowi* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %239

56:                                               ; preds = %46, %41
  %57 = load %struct.flowi*, %struct.flowi** %9, align 8
  %58 = icmp ne %struct.flowi* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %61 = icmp ne %struct.xfrm_policy* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %64 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %63, i32 0, i32 2
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %67 = load %struct.flowi*, %struct.flowi** %9, align 8
  %68 = call i32 @security_xfrm_state_pol_flow_match(%struct.TYPE_12__* %65, %struct.xfrm_policy* %66, %struct.flowi* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %239

71:                                               ; preds = %62, %59, %56
  %72 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %73 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %72, i32 0, i32 2
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @XFRM_STATE_VALID, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %239

81:                                               ; preds = %71
  %82 = load %struct.xfrm_dst*, %struct.xfrm_dst** %15, align 8
  %83 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %86 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %85, i32 0, i32 2
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %84, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %239

92:                                               ; preds = %81
  %93 = load %struct.xfrm_dst*, %struct.xfrm_dst** %15, align 8
  %94 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.xfrm_dst*, %struct.xfrm_dst** %15, align 8
  %99 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.xfrm_dst*, %struct.xfrm_dst** %15, align 8
  %102 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %101, i32 0, i32 8
  %103 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %103, i64 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = call i64 @atomic_read(i32* %106)
  %108 = icmp ne i64 %100, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %239

110:                                              ; preds = %97, %92
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %110
  %114 = load %struct.flowi*, %struct.flowi** %9, align 8
  %115 = icmp ne %struct.flowi* %114, null
  br i1 %115, label %116, label %136

116:                                              ; preds = %113
  %117 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %118 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %117, i32 0, i32 2
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @XFRM_MODE_FLAG_TUNNEL, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %116
  %128 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %129 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %128, i32 0, i32 2
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = load %struct.flowi*, %struct.flowi** %9, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @xfrm_state_addr_flow_check(%struct.TYPE_12__* %130, %struct.flowi* %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %127
  store i32 0, i32* %6, align 4
  br label %239

136:                                              ; preds = %127, %116, %113, %110
  %137 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %138 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %137, i32 0, i32 3
  %139 = load %struct.dst_entry*, %struct.dst_entry** %138, align 8
  %140 = call i64 @dst_mtu(%struct.dst_entry* %139)
  store i64 %140, i64* %14, align 8
  %141 = load %struct.xfrm_dst*, %struct.xfrm_dst** %15, align 8
  %142 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %14, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %136
  %147 = load %struct.xfrm_dst*, %struct.xfrm_dst** %15, align 8
  store %struct.xfrm_dst* %147, %struct.xfrm_dst** %13, align 8
  %148 = load i64, i64* %14, align 8
  %149 = load %struct.xfrm_dst*, %struct.xfrm_dst** %15, align 8
  %150 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %149, i32 0, i32 3
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %146, %136
  %152 = load %struct.xfrm_dst*, %struct.xfrm_dst** %15, align 8
  %153 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %152, i32 0, i32 6
  %154 = load %struct.dst_entry*, %struct.dst_entry** %153, align 8
  %155 = load %struct.xfrm_dst*, %struct.xfrm_dst** %15, align 8
  %156 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @dst_check(%struct.dst_entry* %154, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %151
  store i32 0, i32* %6, align 4
  br label %239

161:                                              ; preds = %151
  %162 = load %struct.xfrm_dst*, %struct.xfrm_dst** %15, align 8
  %163 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %162, i32 0, i32 6
  %164 = load %struct.dst_entry*, %struct.dst_entry** %163, align 8
  %165 = call i64 @dst_mtu(%struct.dst_entry* %164)
  store i64 %165, i64* %14, align 8
  %166 = load %struct.xfrm_dst*, %struct.xfrm_dst** %15, align 8
  %167 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %14, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %161
  %172 = load %struct.xfrm_dst*, %struct.xfrm_dst** %15, align 8
  store %struct.xfrm_dst* %172, %struct.xfrm_dst** %13, align 8
  %173 = load i64, i64* %14, align 8
  %174 = load %struct.xfrm_dst*, %struct.xfrm_dst** %15, align 8
  %175 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %174, i32 0, i32 4
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %171, %161
  %177 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %178 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %177, i32 0, i32 3
  %179 = load %struct.dst_entry*, %struct.dst_entry** %178, align 8
  store %struct.dst_entry* %179, %struct.dst_entry** %12, align 8
  br label %180

180:                                              ; preds = %176
  %181 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %182 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %181, i32 0, i32 2
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = icmp ne %struct.TYPE_12__* %183, null
  br i1 %184, label %41, label %185

185:                                              ; preds = %180
  %186 = load %struct.xfrm_dst*, %struct.xfrm_dst** %13, align 8
  %187 = icmp ne %struct.xfrm_dst* %186, null
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i64 @likely(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  store i32 1, i32* %6, align 4
  br label %239

193:                                              ; preds = %185
  %194 = load %struct.xfrm_dst*, %struct.xfrm_dst** %13, align 8
  %195 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %14, align 8
  br label %197

197:                                              ; preds = %228, %193
  %198 = load %struct.xfrm_dst*, %struct.xfrm_dst** %13, align 8
  %199 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  store %struct.dst_entry* %200, %struct.dst_entry** %12, align 8
  %201 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %202 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %201, i32 0, i32 2
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = load i64, i64* %14, align 8
  %205 = call i64 @xfrm_state_mtu(%struct.TYPE_12__* %203, i64 %204)
  store i64 %205, i64* %14, align 8
  %206 = load i64, i64* %14, align 8
  %207 = load %struct.xfrm_dst*, %struct.xfrm_dst** %13, align 8
  %208 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = icmp sgt i64 %206, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %197
  %212 = load %struct.xfrm_dst*, %struct.xfrm_dst** %13, align 8
  %213 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %14, align 8
  br label %215

215:                                              ; preds = %211, %197
  %216 = load i64, i64* %14, align 8
  %217 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %218 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %217, i32 0, i32 1
  %219 = load i64*, i64** %218, align 8
  %220 = load i32, i32* @RTAX_MTU, align 4
  %221 = sub nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %219, i64 %222
  store i64 %216, i64* %223, align 8
  %224 = load %struct.xfrm_dst*, %struct.xfrm_dst** %13, align 8
  %225 = load %struct.xfrm_dst*, %struct.xfrm_dst** %8, align 8
  %226 = icmp eq %struct.xfrm_dst* %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %215
  br label %238

228:                                              ; preds = %215
  %229 = load %struct.xfrm_dst*, %struct.xfrm_dst** %13, align 8
  %230 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = inttoptr i64 %233 to %struct.xfrm_dst*
  store %struct.xfrm_dst* %234, %struct.xfrm_dst** %13, align 8
  %235 = load i64, i64* %14, align 8
  %236 = load %struct.xfrm_dst*, %struct.xfrm_dst** %13, align 8
  %237 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %236, i32 0, i32 3
  store i64 %235, i64* %237, align 8
  br label %197

238:                                              ; preds = %227
  store i32 1, i32* %6, align 4
  br label %239

239:                                              ; preds = %238, %192, %160, %135, %109, %91, %80, %70, %55, %39
  %240 = load i32, i32* %6, align 4
  ret i32 %240
}

declare dso_local i32 @dst_check(%struct.dst_entry*, i32) #1

declare dso_local i32 @netif_running(i64) #1

declare dso_local i32 @xfrm_selector_match(i32*, %struct.flowi*, i32) #1

declare dso_local i32 @security_xfrm_state_pol_flow_match(%struct.TYPE_12__*, %struct.xfrm_policy*, %struct.flowi*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @xfrm_state_addr_flow_check(%struct.TYPE_12__*, %struct.flowi*, i32) #1

declare dso_local i64 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @xfrm_state_mtu(%struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
