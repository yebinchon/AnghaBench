; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_dequeue_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_dequeue_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.htb_sched = type { i32*, i64*, i64*, i64* }
%struct.htb_class = type { i64, %struct.TYPE_14__, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.sk_buff* (%struct.TYPE_15__*)* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"htb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.htb_sched*, i32, i32)* @htb_dequeue_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @htb_dequeue_tree(%struct.htb_sched* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.htb_sched*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.htb_class*, align 8
  %10 = alloca %struct.htb_class*, align 8
  %11 = alloca %struct.htb_class*, align 8
  store %struct.htb_sched* %0, %struct.htb_sched** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %12 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %13 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %12, i32 0, i32 3
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %24 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %34 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = call %struct.htb_class* @htb_lookup_leaf(i64 %21, i32 %22, i64 %32, i64 %42)
  store %struct.htb_class* %43, %struct.htb_class** %9, align 8
  store %struct.htb_class* %43, %struct.htb_class** %10, align 8
  br label %44

44:                                               ; preds = %203, %3
  br label %45

45:                                               ; preds = %120, %44
  %46 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %47 = icmp ne %struct.htb_class* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %294

53:                                               ; preds = %45
  %54 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %55 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %122

66:                                               ; preds = %53
  %67 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %68 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %69 = call i32 @htb_deactivate(%struct.htb_sched* %67, %struct.htb_class* %68)
  %70 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %71 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = shl i32 1, %77
  %79 = and i32 %76, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %294

82:                                               ; preds = %66
  %83 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %84 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %83, i32 0, i32 3
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %95 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %105 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = call %struct.htb_class* @htb_lookup_leaf(i64 %92, i32 %93, i64 %103, i64 %113)
  store %struct.htb_class* %114, %struct.htb_class** %11, align 8
  %115 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %116 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %117 = icmp eq %struct.htb_class* %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %82
  %119 = load %struct.htb_class*, %struct.htb_class** %11, align 8
  store %struct.htb_class* %119, %struct.htb_class** %10, align 8
  br label %120

120:                                              ; preds = %118, %82
  %121 = load %struct.htb_class*, %struct.htb_class** %11, align 8
  store %struct.htb_class* %121, %struct.htb_class** %9, align 8
  br label %45

122:                                              ; preds = %53
  %123 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %124 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load %struct.sk_buff* (%struct.TYPE_15__*)*, %struct.sk_buff* (%struct.TYPE_15__*)** %128, align 8
  %130 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %131 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = call %struct.sk_buff* %129(%struct.TYPE_15__* %134)
  store %struct.sk_buff* %135, %struct.sk_buff** %8, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %137 = icmp ne %struct.sk_buff* %136, null
  %138 = zext i1 %137 to i32
  %139 = call i64 @likely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %122
  br label %207

142:                                              ; preds = %122
  %143 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %144 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = call i32 @qdisc_warn_nonwc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %147)
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %142
  %152 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %153 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %152, i32 0, i32 2
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  br label %165

159:                                              ; preds = %142
  %160 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %161 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %160, i32 0, i32 1
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 0
  %164 = load i64, i64* %163, align 8
  br label %165

165:                                              ; preds = %159, %151
  %166 = phi i64 [ %158, %151 ], [ %164, %159 ]
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %166, %168
  %170 = call i32 @htb_next_rb_node(i64 %169)
  %171 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %172 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %171, i32 0, i32 3
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %177, %179
  %181 = load i32, i32* %6, align 4
  %182 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %183 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %182, i32 0, i32 1
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %188, %190
  %192 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %193 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %192, i32 0, i32 2
  %194 = load i64*, i64** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %198, %200
  %202 = call %struct.htb_class* @htb_lookup_leaf(i64 %180, i32 %181, i64 %191, i64 %201)
  store %struct.htb_class* %202, %struct.htb_class** %9, align 8
  br label %203

203:                                              ; preds = %165
  %204 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %205 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %206 = icmp ne %struct.htb_class* %204, %205
  br i1 %206, label %44, label %207

207:                                              ; preds = %203, %141
  %208 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %209 = icmp ne %struct.sk_buff* %208, null
  %210 = zext i1 %209 to i32
  %211 = call i64 @likely(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %292

213:                                              ; preds = %207
  %214 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %215 = call i64 @qdisc_pkt_len(%struct.sk_buff* %214)
  %216 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %217 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = load i64*, i64** %219, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = sub nsw i64 %224, %215
  store i64 %225, i64* %223, align 8
  %226 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %227 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load i64*, i64** %229, align 8
  %231 = load i32, i32* %7, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = icmp slt i64 %234, 0
  br i1 %235, label %236, label %272

236:                                              ; preds = %213
  %237 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %238 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %241 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = load i64*, i64** %243, align 8
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %244, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, %239
  store i64 %249, i64* %247, align 8
  %250 = load i32, i32* %7, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %236
  %253 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %254 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %253, i32 0, i32 2
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  br label %266

260:                                              ; preds = %236
  %261 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %262 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %261, i32 0, i32 1
  %263 = load i64*, i64** %262, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 0
  %265 = load i64, i64* %264, align 8
  br label %266

266:                                              ; preds = %260, %252
  %267 = phi i64 [ %259, %252 ], [ %265, %260 ]
  %268 = load i32, i32* %6, align 4
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %267, %269
  %271 = call i32 @htb_next_rb_node(i64 %270)
  br label %272

272:                                              ; preds = %266, %213
  %273 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %274 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %272
  %283 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %284 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %285 = call i32 @htb_deactivate(%struct.htb_sched* %283, %struct.htb_class* %284)
  br label %286

286:                                              ; preds = %282, %272
  %287 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %288 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %289 = load i32, i32* %7, align 4
  %290 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %291 = call i32 @htb_charge_class(%struct.htb_sched* %287, %struct.htb_class* %288, i32 %289, %struct.sk_buff* %290)
  br label %292

292:                                              ; preds = %286, %207
  %293 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %293, %struct.sk_buff** %4, align 8
  br label %294

294:                                              ; preds = %292, %81, %52
  %295 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %295
}

declare dso_local %struct.htb_class* @htb_lookup_leaf(i64, i32, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @htb_deactivate(%struct.htb_sched*, %struct.htb_class*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @qdisc_warn_nonwc(i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @htb_next_rb_node(i64) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @htb_charge_class(%struct.htb_sched*, %struct.htb_class*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
