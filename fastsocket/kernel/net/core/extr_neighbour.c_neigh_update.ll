; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, i32*, i32, i32, i32, i32 (%struct.sk_buff*)*, %struct.TYPE_3__*, i8*, i8*, %struct.net_device* }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { %struct.neighbour* }

@EPERM = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_ADMIN = common dso_local global i32 0, align 4
@NUD_NOARP = common dso_local global i32 0, align 4
@NUD_PERMANENT = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@NUD_CONNECTED = common dso_local global i32 0, align 4
@NUD_INCOMPLETE = common dso_local global i32 0, align 4
@NUD_PROBE = common dso_local global i32 0, align 4
@NUD_FAILED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@NEIGH_UPDATE_F_OVERRIDE_ISROUTER = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_OVERRIDE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_WEAK_OVERRIDE = common dso_local global i32 0, align 4
@NUD_STALE = common dso_local global i32 0, align 4
@NUD_IN_TIMER = common dso_local global i32 0, align 4
@NUD_REACHABLE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_ISROUTER = common dso_local global i32 0, align 4
@NTF_ROUTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @neigh_update(%struct.neighbour* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.neighbour*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.neighbour*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %17 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %16, i32 0, i32 3
  %18 = call i32 @write_lock_bh(i32* %17)
  %19 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %20 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %19, i32 0, i32 9
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %12, align 8
  %22 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %23 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NEIGH_UPDATE_F_ADMIN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @NUD_NOARP, align 4
  %34 = load i32, i32* @NUD_PERMANENT, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %330

39:                                               ; preds = %31, %4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @NUD_VALID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %76, label %44

44:                                               ; preds = %39
  %45 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %46 = call i32 @neigh_del_timer(%struct.neighbour* %45)
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @NUD_CONNECTED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %53 = call i32 @neigh_suspect(%struct.neighbour* %52)
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %57 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @NUD_VALID, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @NUD_INCOMPLETE, align 4
  %63 = load i32, i32* @NUD_PROBE, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %54
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @NUD_FAILED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %74 = call i32 @neigh_invalidate(%struct.neighbour* %73)
  store i32 1, i32* %11, align 4
  br label %75

75:                                               ; preds = %72, %67, %54
  br label %330

76:                                               ; preds = %39
  %77 = load %struct.net_device*, %struct.net_device** %12, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %83 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %6, align 8
  br label %121

85:                                               ; preds = %76
  %86 = load i32*, i32** %6, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %108

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @NUD_VALID, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load i32*, i32** %6, align 8
  %95 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %96 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.net_device*, %struct.net_device** %12, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @memcmp(i32* %94, i32* %97, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %93
  %104 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %105 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %6, align 8
  br label %107

107:                                              ; preds = %103, %93, %88
  br label %120

108:                                              ; preds = %85
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @NUD_VALID, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %108
  br label %330

116:                                              ; preds = %108
  %117 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %118 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  store i32* %119, i32** %6, align 8
  br label %120

120:                                              ; preds = %116, %107
  br label %121

121:                                              ; preds = %120, %81
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @NUD_CONNECTED, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i8*, i8** @jiffies, align 8
  %128 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %129 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %128, i32 0, i32 7
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %126, %121
  %131 = load i8*, i8** @jiffies, align 8
  %132 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %133 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %132, i32 0, i32 8
  store i8* %131, i8** %133, align 8
  store i32 0, i32* %10, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE_ISROUTER, align 4
  %136 = and i32 %134, %135
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @NUD_VALID, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %193

141:                                              ; preds = %130
  %142 = load i32*, i32** %6, align 8
  %143 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %144 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %142, %145
  br i1 %146, label %147, label %169

147:                                              ; preds = %141
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %169, label %152

152:                                              ; preds = %147
  store i32 0, i32* %13, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @NEIGH_UPDATE_F_WEAK_OVERRIDE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %152
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @NUD_CONNECTED, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %164 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  store i32* %165, i32** %6, align 8
  %166 = load i32, i32* @NUD_STALE, align 4
  store i32 %166, i32* %7, align 4
  br label %168

167:                                              ; preds = %157, %152
  br label %330

168:                                              ; preds = %162
  br label %192

169:                                              ; preds = %147, %141
  %170 = load i32*, i32** %6, align 8
  %171 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %172 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = icmp eq i32* %170, %173
  br i1 %174, label %175, label %191

175:                                              ; preds = %169
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @NUD_STALE, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %191

179:                                              ; preds = %175
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @NEIGH_UPDATE_F_WEAK_OVERRIDE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %179
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* @NUD_CONNECTED, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184, %179
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %7, align 4
  br label %191

191:                                              ; preds = %189, %184, %175, %169
  br label %192

192:                                              ; preds = %191, %168
  br label %193

193:                                              ; preds = %192, %130
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %227

197:                                              ; preds = %193
  %198 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %199 = call i32 @neigh_del_timer(%struct.neighbour* %198)
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* @NUD_IN_TIMER, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %223

204:                                              ; preds = %197
  %205 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %206 = load i8*, i8** @jiffies, align 8
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* @NUD_REACHABLE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %204
  %212 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %213 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %212, i32 0, i32 6
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  br label %218

217:                                              ; preds = %204
  br label %218

218:                                              ; preds = %217, %211
  %219 = phi i32 [ %216, %211 ], [ 0, %217 ]
  %220 = sext i32 %219 to i64
  %221 = getelementptr i8, i8* %206, i64 %220
  %222 = call i32 @neigh_add_timer(%struct.neighbour* %205, i8* %221)
  br label %223

223:                                              ; preds = %218, %197
  %224 = load i32, i32* %7, align 4
  %225 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %226 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %223, %193
  %228 = load i32*, i32** %6, align 8
  %229 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %230 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = icmp ne i32* %228, %231
  br i1 %232, label %233, label %261

233:                                              ; preds = %227
  %234 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %235 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %234, i32 0, i32 1
  %236 = load i32*, i32** %6, align 8
  %237 = load %struct.net_device*, %struct.net_device** %12, align 8
  %238 = getelementptr inbounds %struct.net_device, %struct.net_device* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @memcpy(i32** %235, i32* %236, i32 %239)
  %241 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %242 = call i32 @neigh_update_hhs(%struct.neighbour* %241)
  %243 = load i32, i32* %7, align 4
  %244 = load i32, i32* @NUD_CONNECTED, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %260, label %247

247:                                              ; preds = %233
  %248 = load i8*, i8** @jiffies, align 8
  %249 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %250 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %249, i32 0, i32 6
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = shl i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = sub i64 0, %255
  %257 = getelementptr i8, i8* %248, i64 %256
  %258 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %259 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %258, i32 0, i32 7
  store i8* %257, i8** %259, align 8
  br label %260

260:                                              ; preds = %247, %233
  store i32 1, i32* %11, align 4
  br label %261

261:                                              ; preds = %260, %227
  %262 = load i32, i32* %7, align 4
  %263 = load i32, i32* %9, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  br label %330

266:                                              ; preds = %261
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* @NUD_CONNECTED, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %266
  %272 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %273 = call i32 @neigh_connect(%struct.neighbour* %272)
  br label %277

274:                                              ; preds = %266
  %275 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %276 = call i32 @neigh_suspect(%struct.neighbour* %275)
  br label %277

277:                                              ; preds = %274, %271
  %278 = load i32, i32* %9, align 4
  %279 = load i32, i32* @NUD_VALID, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %329, label %282

282:                                              ; preds = %277
  br label %283

283:                                              ; preds = %316, %282
  %284 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %285 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @NUD_VALID, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %283
  %291 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %292 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %291, i32 0, i32 4
  %293 = call %struct.sk_buff* @__skb_dequeue(i32* %292)
  store %struct.sk_buff* %293, %struct.sk_buff** %14, align 8
  %294 = icmp ne %struct.sk_buff* %293, null
  br label %295

295:                                              ; preds = %290, %283
  %296 = phi i1 [ false, %283 ], [ %294, %290 ]
  br i1 %296, label %297, label %325

297:                                              ; preds = %295
  %298 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  store %struct.neighbour* %298, %struct.neighbour** %15, align 8
  %299 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %300 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %299, i32 0, i32 3
  %301 = call i32 @write_unlock_bh(i32* %300)
  %302 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %303 = call %struct.TYPE_4__* @skb_dst(%struct.sk_buff* %302)
  %304 = icmp ne %struct.TYPE_4__* %303, null
  br i1 %304, label %305, label %316

305:                                              ; preds = %297
  %306 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %307 = call %struct.TYPE_4__* @skb_dst(%struct.sk_buff* %306)
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 0
  %309 = load %struct.neighbour*, %struct.neighbour** %308, align 8
  %310 = icmp ne %struct.neighbour* %309, null
  br i1 %310, label %311, label %316

311:                                              ; preds = %305
  %312 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %313 = call %struct.TYPE_4__* @skb_dst(%struct.sk_buff* %312)
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  %315 = load %struct.neighbour*, %struct.neighbour** %314, align 8
  store %struct.neighbour* %315, %struct.neighbour** %15, align 8
  br label %316

316:                                              ; preds = %311, %305, %297
  %317 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %318 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %317, i32 0, i32 5
  %319 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %318, align 8
  %320 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %321 = call i32 %319(%struct.sk_buff* %320)
  %322 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %323 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %322, i32 0, i32 3
  %324 = call i32 @write_lock_bh(i32* %323)
  br label %283

325:                                              ; preds = %295
  %326 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %327 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %326, i32 0, i32 4
  %328 = call i32 @skb_queue_purge(i32* %327)
  br label %329

329:                                              ; preds = %325, %277
  br label %330

330:                                              ; preds = %329, %265, %167, %115, %75, %38
  %331 = load i32, i32* %13, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %355

333:                                              ; preds = %330
  %334 = load i32, i32* %8, align 4
  %335 = load i32, i32* @NEIGH_UPDATE_F_ISROUTER, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %333
  %339 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %340 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @NTF_ROUTER, align 4
  %343 = or i32 %341, %342
  br label %351

344:                                              ; preds = %333
  %345 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %346 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @NTF_ROUTER, align 4
  %349 = xor i32 %348, -1
  %350 = and i32 %347, %349
  br label %351

351:                                              ; preds = %344, %338
  %352 = phi i32 [ %343, %338 ], [ %350, %344 ]
  %353 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %354 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %353, i32 0, i32 2
  store i32 %352, i32* %354, align 8
  br label %355

355:                                              ; preds = %351, %330
  %356 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %357 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %356, i32 0, i32 3
  %358 = call i32 @write_unlock_bh(i32* %357)
  %359 = load i32, i32* %11, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %355
  %362 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  %363 = call i32 @neigh_update_notify(%struct.neighbour* %362)
  br label %364

364:                                              ; preds = %361, %355
  %365 = load i32, i32* %10, align 4
  ret i32 %365
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @neigh_del_timer(%struct.neighbour*) #1

declare dso_local i32 @neigh_suspect(%struct.neighbour*) #1

declare dso_local i32 @neigh_invalidate(%struct.neighbour*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @neigh_add_timer(%struct.neighbour*, i8*) #1

declare dso_local i32 @memcpy(i32**, i32*, i32) #1

declare dso_local i32 @neigh_update_hhs(%struct.neighbour*) #1

declare dso_local i32 @neigh_connect(%struct.neighbour*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local %struct.TYPE_4__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @neigh_update_notify(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
