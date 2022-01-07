; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_rt_frag_needed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_rt_frag_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.net = type { i32 }
%struct.iphdr = type { i64, i64, i32, i32 }
%struct.net_device = type { i32 }
%struct.rtable = type { i64, i64, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i64 }

@ipv4_config = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@rt_hash_table = common dso_local global %struct.TYPE_11__* null, align 8
@RTAX_MTU = common dso_local global i32 0, align 4
@ip_rt_min_pmtu = common dso_local global i16 0, align 2
@RTAX_LOCK = common dso_local global i32 0, align 4
@ip_rt_mtu_expires = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @ip_rt_frag_needed(%struct.net* %0, %struct.iphdr* %1, i16 zeroext %2, %struct.net_device* %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca %struct.rtable*, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca [2 x i64], align 16
  %16 = alloca i64, align 8
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.iphdr* %1, %struct.iphdr** %7, align 8
  store i16 %2, i16* %8, align 2
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %20 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %21 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call zeroext i16 @ntohs(i32 %22)
  store i16 %23, i16* %12, align 2
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %25 = load %struct.net_device*, %struct.net_device** %9, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  %30 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %31 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %29, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %16, align 8
  store i16 0, i16* %17, align 2
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ipv4_config, i32 0, i32 0), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %4
  store i16 0, i16* %5, align 2
  br label %276

40:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %262, %40
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %265

44:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %258, %44
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %261

48:                                               ; preds = %45
  %49 = load i64, i64* %16, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.net*, %struct.net** %6, align 8
  %59 = call i32 @rt_genid(%struct.net* %58)
  %60 = call i32 @rt_hash(i64 %49, i64 %53, i32 %57, i32 %59)
  store i32 %60, i32* %18, align 4
  %61 = call i32 (...) @rcu_read_lock()
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rt_hash_table, align 8
  %63 = load i32, i32* %18, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.rtable* @rcu_dereference(i32 %67)
  store %struct.rtable* %68, %struct.rtable** %13, align 8
  br label %69

69:                                               ; preds = %249, %48
  %70 = load %struct.rtable*, %struct.rtable** %13, align 8
  %71 = icmp ne %struct.rtable* %70, null
  br i1 %71, label %72, label %256

72:                                               ; preds = %69
  %73 = load i16, i16* %8, align 2
  store i16 %73, i16* %19, align 2
  %74 = load %struct.rtable*, %struct.rtable** %13, align 8
  %75 = getelementptr inbounds %struct.rtable, %struct.rtable* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %141, label %80

80:                                               ; preds = %72
  %81 = load %struct.rtable*, %struct.rtable** %13, align 8
  %82 = getelementptr inbounds %struct.rtable, %struct.rtable* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %84, %88
  br i1 %89, label %141, label %90

90:                                               ; preds = %80
  %91 = load %struct.rtable*, %struct.rtable** %13, align 8
  %92 = getelementptr inbounds %struct.rtable, %struct.rtable* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %16, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %141, label %96

96:                                               ; preds = %90
  %97 = load %struct.rtable*, %struct.rtable** %13, align 8
  %98 = getelementptr inbounds %struct.rtable, %struct.rtable* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %101 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %141, label %104

104:                                              ; preds = %96
  %105 = load %struct.rtable*, %struct.rtable** %13, align 8
  %106 = getelementptr inbounds %struct.rtable, %struct.rtable* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %108, %112
  br i1 %113, label %141, label %114

114:                                              ; preds = %104
  %115 = load %struct.rtable*, %struct.rtable** %13, align 8
  %116 = getelementptr inbounds %struct.rtable, %struct.rtable* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %141, label %120

120:                                              ; preds = %114
  %121 = load %struct.rtable*, %struct.rtable** %13, align 8
  %122 = getelementptr inbounds %struct.rtable, %struct.rtable* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* @RTAX_MTU, align 4
  %125 = call i64 @dst_metric_locked(%struct.TYPE_13__* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %120
  %128 = load %struct.rtable*, %struct.rtable** %13, align 8
  %129 = getelementptr inbounds %struct.rtable, %struct.rtable* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @dev_net(i32 %132)
  %134 = load %struct.net*, %struct.net** %6, align 8
  %135 = call i32 @net_eq(i32 %133, %struct.net* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %127
  %138 = load %struct.rtable*, %struct.rtable** %13, align 8
  %139 = call i64 @rt_is_expired(%struct.rtable* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137, %127, %120, %114, %104, %96, %90, %80, %72
  br label %249

142:                                              ; preds = %137
  %143 = load i16, i16* %8, align 2
  %144 = zext i16 %143 to i32
  %145 = icmp slt i32 %144, 68
  br i1 %145, label %152, label %146

146:                                              ; preds = %142
  %147 = load i16, i16* %8, align 2
  %148 = zext i16 %147 to i32
  %149 = load i16, i16* %12, align 2
  %150 = zext i16 %149 to i32
  %151 = icmp sge i32 %148, %150
  br i1 %151, label %152, label %186

152:                                              ; preds = %146, %142
  %153 = load i16, i16* %19, align 2
  %154 = zext i16 %153 to i32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %183

156:                                              ; preds = %152
  %157 = load i16, i16* %12, align 2
  %158 = zext i16 %157 to i32
  %159 = load %struct.rtable*, %struct.rtable** %13, align 8
  %160 = getelementptr inbounds %struct.rtable, %struct.rtable* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = call zeroext i16 @dst_mtu(%struct.TYPE_13__* %161)
  %163 = zext i16 %162 to i32
  %164 = icmp sge i32 %158, %163
  br i1 %164, label %165, label %183

165:                                              ; preds = %156
  %166 = load i16, i16* %12, align 2
  %167 = zext i16 %166 to i32
  %168 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %169 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = shl i32 %170, 2
  %172 = add nsw i32 68, %171
  %173 = icmp sge i32 %167, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %165
  %175 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %176 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = shl i32 %177, 2
  %179 = load i16, i16* %12, align 2
  %180 = zext i16 %179 to i32
  %181 = sub nsw i32 %180, %178
  %182 = trunc i32 %181 to i16
  store i16 %182, i16* %12, align 2
  br label %183

183:                                              ; preds = %174, %165, %156, %152
  %184 = load i16, i16* %12, align 2
  %185 = call zeroext i16 @guess_mtu(i16 zeroext %184)
  store i16 %185, i16* %19, align 2
  br label %186

186:                                              ; preds = %183, %146
  %187 = load i16, i16* %19, align 2
  %188 = zext i16 %187 to i32
  %189 = load %struct.rtable*, %struct.rtable** %13, align 8
  %190 = getelementptr inbounds %struct.rtable, %struct.rtable* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = call zeroext i16 @dst_mtu(%struct.TYPE_13__* %191)
  %193 = zext i16 %192 to i32
  %194 = icmp sle i32 %188, %193
  br i1 %194, label %195, label %248

195:                                              ; preds = %186
  %196 = load i16, i16* %19, align 2
  %197 = zext i16 %196 to i32
  %198 = load %struct.rtable*, %struct.rtable** %13, align 8
  %199 = getelementptr inbounds %struct.rtable, %struct.rtable* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = call zeroext i16 @dst_mtu(%struct.TYPE_13__* %200)
  %202 = zext i16 %201 to i32
  %203 = icmp slt i32 %197, %202
  br i1 %203, label %204, label %246

204:                                              ; preds = %195
  %205 = load %struct.rtable*, %struct.rtable** %13, align 8
  %206 = getelementptr inbounds %struct.rtable, %struct.rtable* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = call i32 @dst_confirm(%struct.TYPE_13__* %207)
  %209 = load i16, i16* %19, align 2
  %210 = zext i16 %209 to i32
  %211 = load i16, i16* @ip_rt_min_pmtu, align 2
  %212 = zext i16 %211 to i32
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %229

214:                                              ; preds = %204
  %215 = load i16, i16* @ip_rt_min_pmtu, align 2
  store i16 %215, i16* %19, align 2
  %216 = load i32, i32* @RTAX_MTU, align 4
  %217 = shl i32 1, %216
  %218 = load %struct.rtable*, %struct.rtable** %13, align 8
  %219 = getelementptr inbounds %struct.rtable, %struct.rtable* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* @RTAX_LOCK, align 4
  %224 = sub nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %217
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %214, %204
  %230 = load i16, i16* %19, align 2
  %231 = zext i16 %230 to i32
  %232 = load %struct.rtable*, %struct.rtable** %13, align 8
  %233 = getelementptr inbounds %struct.rtable, %struct.rtable* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* @RTAX_MTU, align 4
  %238 = sub nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  store i32 %231, i32* %240, align 4
  %241 = load %struct.rtable*, %struct.rtable** %13, align 8
  %242 = getelementptr inbounds %struct.rtable, %struct.rtable* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i32, i32* @ip_rt_mtu_expires, align 4
  %245 = call i32 @dst_set_expires(%struct.TYPE_13__* %243, i32 %244)
  br label %246

246:                                              ; preds = %229, %195
  %247 = load i16, i16* %19, align 2
  store i16 %247, i16* %17, align 2
  br label %248

248:                                              ; preds = %246, %186
  br label %249

249:                                              ; preds = %248, %141
  %250 = load %struct.rtable*, %struct.rtable** %13, align 8
  %251 = getelementptr inbounds %struct.rtable, %struct.rtable* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = call %struct.rtable* @rcu_dereference(i32 %254)
  store %struct.rtable* %255, %struct.rtable** %13, align 8
  br label %69

256:                                              ; preds = %69
  %257 = call i32 (...) @rcu_read_unlock()
  br label %258

258:                                              ; preds = %256
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %10, align 4
  br label %45

261:                                              ; preds = %45
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %11, align 4
  br label %41

265:                                              ; preds = %41
  %266 = load i16, i16* %17, align 2
  %267 = zext i16 %266 to i32
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  br label %273

270:                                              ; preds = %265
  %271 = load i16, i16* %8, align 2
  %272 = zext i16 %271 to i32
  br label %273

273:                                              ; preds = %270, %269
  %274 = phi i32 [ %267, %269 ], [ %272, %270 ]
  %275 = trunc i32 %274 to i16
  store i16 %275, i16* %5, align 2
  br label %276

276:                                              ; preds = %273, %39
  %277 = load i16, i16* %5, align 2
  ret i16 %277
}

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @rt_hash(i64, i64, i32, i32) #1

declare dso_local i32 @rt_genid(%struct.net*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rtable* @rcu_dereference(i32) #1

declare dso_local i64 @dst_metric_locked(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i64 @rt_is_expired(%struct.rtable*) #1

declare dso_local zeroext i16 @dst_mtu(%struct.TYPE_13__*) #1

declare dso_local zeroext i16 @guess_mtu(i16 zeroext) #1

declare dso_local i32 @dst_confirm(%struct.TYPE_13__*) #1

declare dso_local i32 @dst_set_expires(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
