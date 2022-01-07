; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c___pskb_pull_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c___pskb_pull_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, %struct.sk_buff* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__pskb_pull_tail(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %14, %15
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i64 @skb_cloned(%struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %23, %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 128
  br label %35

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ 0, %34 ]
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call i64 @pskb_expand_head(%struct.sk_buff* %28, i32 0, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i8* null, i8** %3, align 8
  br label %294

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %23
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @skb_headlen(%struct.sk_buff* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i8* @skb_tail_pointer(%struct.sk_buff* %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @skb_copy_bits(%struct.sk_buff* %43, i32 %45, i8* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = call i32 (...) @BUG()
  br label %53

53:                                               ; preds = %51, %42
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @skb_has_frag_list(%struct.sk_buff* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %185

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %92, %58
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %95

67:                                               ; preds = %60
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %185

80:                                               ; preds = %67
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %81)
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %80
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %60

95:                                               ; preds = %60
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %184

98:                                               ; preds = %95
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load %struct.sk_buff*, %struct.sk_buff** %101, align 8
  store %struct.sk_buff* %102, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  br label %103

103:                                              ; preds = %152, %98
  %104 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 @BUG_ON(i32 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %103
  %115 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %121, align 8
  store %struct.sk_buff* %122, %struct.sk_buff** %9, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %123, %struct.sk_buff** %11, align 8
  br label %151

124:                                              ; preds = %103
  %125 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %126 = call i64 @skb_shared(%struct.sk_buff* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %124
  %129 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %130 = load i32, i32* @GFP_ATOMIC, align 4
  %131 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %129, i32 %130)
  store %struct.sk_buff* %131, %struct.sk_buff** %10, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %133 = icmp ne %struct.sk_buff* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %128
  store i8* null, i8** %3, align 8
  br label %294

135:                                              ; preds = %128
  %136 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %137, align 8
  store %struct.sk_buff* %138, %struct.sk_buff** %11, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %139, %struct.sk_buff** %9, align 8
  br label %142

140:                                              ; preds = %124
  %141 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %141, %struct.sk_buff** %11, align 8
  br label %142

142:                                              ; preds = %140, %135
  %143 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @pskb_pull(%struct.sk_buff* %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %149 = call i32 @kfree_skb(%struct.sk_buff* %148)
  store i8* null, i8** %3, align 8
  br label %294

150:                                              ; preds = %142
  br label %155

151:                                              ; preds = %114
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %103, label %155

155:                                              ; preds = %152, %150
  br label %156

156:                                              ; preds = %163, %155
  %157 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %158 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %157)
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load %struct.sk_buff*, %struct.sk_buff** %159, align 8
  store %struct.sk_buff* %160, %struct.sk_buff** %9, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %162 = icmp ne %struct.sk_buff* %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %156
  %164 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %165, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %168 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %167)
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  store %struct.sk_buff* %166, %struct.sk_buff** %169, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %171 = call i32 @kfree_skb(%struct.sk_buff* %170)
  br label %156

172:                                              ; preds = %156
  %173 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %174 = icmp ne %struct.sk_buff* %173, null
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %178 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %177, i32 0, i32 4
  store %struct.sk_buff* %176, %struct.sk_buff** %178, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %181 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %180)
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  store %struct.sk_buff* %179, %struct.sk_buff** %182, align 8
  br label %183

183:                                              ; preds = %175, %172
  br label %184

184:                                              ; preds = %183, %95
  br label %185

185:                                              ; preds = %184, %79, %57
  %186 = load i32, i32* %5, align 4
  store i32 %186, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %187

187:                                              ; preds = %274, %185
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %190 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %189)
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %188, %192
  br i1 %193, label %194, label %277

194:                                              ; preds = %187
  %195 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %196 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %195)
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp sle i32 %203, %204
  br i1 %205, label %206, label %228

206:                                              ; preds = %194
  %207 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %208 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %207)
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @put_page(i32 %215)
  %217 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %218 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %217)
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %8, align 4
  %227 = sub nsw i32 %226, %225
  store i32 %227, i32* %8, align 4
  br label %273

228:                                              ; preds = %194
  %229 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %230 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %229)
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %231, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i64 %234
  %236 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %237 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %236)
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %238, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i64 %241
  %243 = bitcast %struct.TYPE_3__* %235 to i8*
  %244 = bitcast %struct.TYPE_3__* %242 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %243, i8* align 4 %244, i64 12, i1 false)
  %245 = load i32, i32* %8, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %270

247:                                              ; preds = %228
  %248 = load i32, i32* %8, align 4
  %249 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %250 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %249)
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %251, align 8
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, %248
  store i32 %258, i32* %256, align 4
  %259 = load i32, i32* %8, align 4
  %260 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %261 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %260)
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %262, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = sub nsw i32 %268, %259
  store i32 %269, i32* %267, align 4
  store i32 0, i32* %8, align 4
  br label %270

270:                                              ; preds = %247, %228
  %271 = load i32, i32* %7, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %7, align 4
  br label %273

273:                                              ; preds = %270, %206
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %6, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %6, align 4
  br label %187

277:                                              ; preds = %187
  %278 = load i32, i32* %7, align 4
  %279 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %280 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %279)
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  store i32 %278, i32* %281, align 8
  %282 = load i32, i32* %5, align 4
  %283 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %284 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = add nsw i32 %285, %282
  store i32 %286, i32* %284, align 8
  %287 = load i32, i32* %5, align 4
  %288 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %289 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = sub nsw i32 %290, %287
  store i32 %291, i32* %289, align 4
  %292 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %293 = call i8* @skb_tail_pointer(%struct.sk_buff* %292)
  store i8* %293, i8** %3, align 8
  br label %294

294:                                              ; preds = %277, %147, %134, %40
  %295 = load i8*, i8** %3, align 8
  ret i8* %295
}

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i8*, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @skb_has_frag_list(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @put_page(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
