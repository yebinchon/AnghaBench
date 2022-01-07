; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_inflate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie = type { i32 }
%struct.tnode = type { i32, i32, i32, %struct.node** }
%struct.node = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"In inflate\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@KEYLENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tnode* (%struct.trie*, %struct.tnode*)* @inflate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tnode* @inflate(%struct.trie* %0, %struct.tnode* %1) #0 {
  %3 = alloca %struct.tnode*, align 8
  %4 = alloca %struct.trie*, align 8
  %5 = alloca %struct.tnode*, align 8
  %6 = alloca %struct.tnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tnode*, align 8
  %10 = alloca %struct.tnode*, align 8
  %11 = alloca %struct.tnode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tnode*, align 8
  %14 = alloca %struct.node*, align 8
  %15 = alloca %struct.tnode*, align 8
  %16 = alloca %struct.tnode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.trie* %0, %struct.trie** %4, align 8
  store %struct.tnode* %1, %struct.tnode** %5, align 8
  %21 = load %struct.tnode*, %struct.tnode** %5, align 8
  store %struct.tnode* %21, %struct.tnode** %6, align 8
  %22 = load %struct.tnode*, %struct.tnode** %5, align 8
  %23 = call i32 @tnode_child_length(%struct.tnode* %22)
  store i32 %23, i32* %7, align 4
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.tnode*, %struct.tnode** %6, align 8
  %26 = getelementptr inbounds %struct.tnode, %struct.tnode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.tnode*, %struct.tnode** %6, align 8
  %29 = getelementptr inbounds %struct.tnode, %struct.tnode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tnode*, %struct.tnode** %6, align 8
  %32 = getelementptr inbounds %struct.tnode, %struct.tnode* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = call %struct.tnode* @tnode_new(i32 %27, i32 %30, i32 %34)
  store %struct.tnode* %35, %struct.tnode** %5, align 8
  %36 = load %struct.tnode*, %struct.tnode** %5, align 8
  %37 = icmp ne %struct.tnode* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.tnode* @ERR_PTR(i32 %40)
  store %struct.tnode* %41, %struct.tnode** %3, align 8
  br label %361

42:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %138, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %141

47:                                               ; preds = %43
  %48 = load %struct.tnode*, %struct.tnode** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call %struct.node* @tnode_get_child(%struct.tnode* %48, i32 %49)
  %51 = bitcast %struct.node* %50 to %struct.tnode*
  store %struct.tnode* %51, %struct.tnode** %9, align 8
  %52 = load %struct.tnode*, %struct.tnode** %9, align 8
  %53 = icmp ne %struct.tnode* %52, null
  br i1 %53, label %54, label %137

54:                                               ; preds = %47
  %55 = load %struct.tnode*, %struct.tnode** %9, align 8
  %56 = call i64 @IS_TNODE(%struct.tnode* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %137

58:                                               ; preds = %54
  %59 = load %struct.tnode*, %struct.tnode** %9, align 8
  %60 = getelementptr inbounds %struct.tnode, %struct.tnode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tnode*, %struct.tnode** %6, align 8
  %63 = getelementptr inbounds %struct.tnode, %struct.tnode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.tnode*, %struct.tnode** %6, align 8
  %66 = getelementptr inbounds %struct.tnode, %struct.tnode* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %64, %67
  %69 = icmp eq i32 %61, %68
  br i1 %69, label %70, label %137

70:                                               ; preds = %58
  %71 = load %struct.tnode*, %struct.tnode** %9, align 8
  %72 = getelementptr inbounds %struct.tnode, %struct.tnode* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %137

75:                                               ; preds = %70
  %76 = load i32, i32* @KEYLENGTH, align 4
  %77 = sub nsw i32 %76, 1
  %78 = shl i32 -1, %77
  %79 = load %struct.tnode*, %struct.tnode** %9, align 8
  %80 = getelementptr inbounds %struct.tnode, %struct.tnode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = lshr i32 %78, %81
  store i32 %82, i32* %12, align 4
  %83 = load %struct.tnode*, %struct.tnode** %9, align 8
  %84 = getelementptr inbounds %struct.tnode, %struct.tnode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  %89 = load %struct.tnode*, %struct.tnode** %9, align 8
  %90 = getelementptr inbounds %struct.tnode, %struct.tnode* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  %93 = load %struct.tnode*, %struct.tnode** %9, align 8
  %94 = getelementptr inbounds %struct.tnode, %struct.tnode* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = call %struct.tnode* @tnode_new(i32 %88, i32 %92, i32 %96)
  store %struct.tnode* %97, %struct.tnode** %10, align 8
  %98 = load %struct.tnode*, %struct.tnode** %10, align 8
  %99 = icmp ne %struct.tnode* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %75
  br label %325

101:                                              ; preds = %75
  %102 = load %struct.tnode*, %struct.tnode** %9, align 8
  %103 = getelementptr inbounds %struct.tnode, %struct.tnode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.tnode*, %struct.tnode** %9, align 8
  %108 = getelementptr inbounds %struct.tnode, %struct.tnode* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  %111 = load %struct.tnode*, %struct.tnode** %9, align 8
  %112 = getelementptr inbounds %struct.tnode, %struct.tnode* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 1
  %115 = call %struct.tnode* @tnode_new(i32 %106, i32 %110, i32 %114)
  store %struct.tnode* %115, %struct.tnode** %11, align 8
  %116 = load %struct.tnode*, %struct.tnode** %11, align 8
  %117 = icmp ne %struct.tnode* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %101
  %119 = load %struct.tnode*, %struct.tnode** %10, align 8
  %120 = call i32 @tnode_free(%struct.tnode* %119)
  br label %325

121:                                              ; preds = %101
  %122 = load %struct.trie*, %struct.trie** %4, align 8
  %123 = load %struct.tnode*, %struct.tnode** %5, align 8
  %124 = load i32, i32* %8, align 4
  %125 = mul nsw i32 2, %124
  %126 = load %struct.tnode*, %struct.tnode** %10, align 8
  %127 = bitcast %struct.tnode* %126 to %struct.node*
  %128 = call i32 @put_child(%struct.trie* %122, %struct.tnode* %123, i32 %125, %struct.node* %127)
  %129 = load %struct.trie*, %struct.trie** %4, align 8
  %130 = load %struct.tnode*, %struct.tnode** %5, align 8
  %131 = load i32, i32* %8, align 4
  %132 = mul nsw i32 2, %131
  %133 = add nsw i32 %132, 1
  %134 = load %struct.tnode*, %struct.tnode** %11, align 8
  %135 = bitcast %struct.tnode* %134 to %struct.node*
  %136 = call i32 @put_child(%struct.trie* %129, %struct.tnode* %130, i32 %133, %struct.node* %135)
  br label %137

137:                                              ; preds = %121, %70, %58, %54, %47
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %43

141:                                              ; preds = %43
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %318, %141
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %321

146:                                              ; preds = %142
  %147 = load %struct.tnode*, %struct.tnode** %6, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call %struct.node* @tnode_get_child(%struct.tnode* %147, i32 %148)
  store %struct.node* %149, %struct.node** %14, align 8
  %150 = load %struct.node*, %struct.node** %14, align 8
  %151 = icmp eq %struct.node* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %318

153:                                              ; preds = %146
  %154 = load %struct.node*, %struct.node** %14, align 8
  %155 = call i64 @IS_LEAF(%struct.node* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %171, label %157

157:                                              ; preds = %153
  %158 = load %struct.node*, %struct.node** %14, align 8
  %159 = bitcast %struct.node* %158 to %struct.tnode*
  %160 = getelementptr inbounds %struct.tnode, %struct.tnode* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.tnode*, %struct.tnode** %5, align 8
  %163 = getelementptr inbounds %struct.tnode, %struct.tnode* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.tnode*, %struct.tnode** %5, align 8
  %166 = getelementptr inbounds %struct.tnode, %struct.tnode* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %164, %167
  %169 = sub nsw i32 %168, 1
  %170 = icmp sgt i32 %161, %169
  br i1 %170, label %171, label %200

171:                                              ; preds = %157, %153
  %172 = load %struct.node*, %struct.node** %14, align 8
  %173 = getelementptr inbounds %struct.node, %struct.node* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.tnode*, %struct.tnode** %6, align 8
  %176 = getelementptr inbounds %struct.tnode, %struct.tnode* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.tnode*, %struct.tnode** %6, align 8
  %179 = getelementptr inbounds %struct.tnode, %struct.tnode* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %177, %180
  %182 = call i64 @tkey_extract_bits(i32 %174, i32 %181, i32 1)
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %171
  %185 = load %struct.trie*, %struct.trie** %4, align 8
  %186 = load %struct.tnode*, %struct.tnode** %5, align 8
  %187 = load i32, i32* %8, align 4
  %188 = mul nsw i32 2, %187
  %189 = load %struct.node*, %struct.node** %14, align 8
  %190 = call i32 @put_child(%struct.trie* %185, %struct.tnode* %186, i32 %188, %struct.node* %189)
  br label %199

191:                                              ; preds = %171
  %192 = load %struct.trie*, %struct.trie** %4, align 8
  %193 = load %struct.tnode*, %struct.tnode** %5, align 8
  %194 = load i32, i32* %8, align 4
  %195 = mul nsw i32 2, %194
  %196 = add nsw i32 %195, 1
  %197 = load %struct.node*, %struct.node** %14, align 8
  %198 = call i32 @put_child(%struct.trie* %192, %struct.tnode* %193, i32 %196, %struct.node* %197)
  br label %199

199:                                              ; preds = %191, %184
  br label %318

200:                                              ; preds = %157
  %201 = load %struct.node*, %struct.node** %14, align 8
  %202 = bitcast %struct.node* %201 to %struct.tnode*
  store %struct.tnode* %202, %struct.tnode** %13, align 8
  %203 = load %struct.tnode*, %struct.tnode** %13, align 8
  %204 = getelementptr inbounds %struct.tnode, %struct.tnode* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %231

207:                                              ; preds = %200
  %208 = load %struct.trie*, %struct.trie** %4, align 8
  %209 = load %struct.tnode*, %struct.tnode** %5, align 8
  %210 = load i32, i32* %8, align 4
  %211 = mul nsw i32 2, %210
  %212 = load %struct.tnode*, %struct.tnode** %13, align 8
  %213 = getelementptr inbounds %struct.tnode, %struct.tnode* %212, i32 0, i32 3
  %214 = load %struct.node**, %struct.node*** %213, align 8
  %215 = getelementptr inbounds %struct.node*, %struct.node** %214, i64 0
  %216 = load %struct.node*, %struct.node** %215, align 8
  %217 = call i32 @put_child(%struct.trie* %208, %struct.tnode* %209, i32 %211, %struct.node* %216)
  %218 = load %struct.trie*, %struct.trie** %4, align 8
  %219 = load %struct.tnode*, %struct.tnode** %5, align 8
  %220 = load i32, i32* %8, align 4
  %221 = mul nsw i32 2, %220
  %222 = add nsw i32 %221, 1
  %223 = load %struct.tnode*, %struct.tnode** %13, align 8
  %224 = getelementptr inbounds %struct.tnode, %struct.tnode* %223, i32 0, i32 3
  %225 = load %struct.node**, %struct.node*** %224, align 8
  %226 = getelementptr inbounds %struct.node*, %struct.node** %225, i64 1
  %227 = load %struct.node*, %struct.node** %226, align 8
  %228 = call i32 @put_child(%struct.trie* %218, %struct.tnode* %219, i32 %222, %struct.node* %227)
  %229 = load %struct.tnode*, %struct.tnode** %13, align 8
  %230 = call i32 @tnode_free_safe(%struct.tnode* %229)
  br label %318

231:                                              ; preds = %200
  %232 = load %struct.tnode*, %struct.tnode** %5, align 8
  %233 = load i32, i32* %8, align 4
  %234 = mul nsw i32 2, %233
  %235 = call %struct.node* @tnode_get_child(%struct.tnode* %232, i32 %234)
  %236 = bitcast %struct.node* %235 to %struct.tnode*
  store %struct.tnode* %236, %struct.tnode** %15, align 8
  %237 = load %struct.trie*, %struct.trie** %4, align 8
  %238 = load %struct.tnode*, %struct.tnode** %5, align 8
  %239 = load i32, i32* %8, align 4
  %240 = mul nsw i32 2, %239
  %241 = call i32 @put_child(%struct.trie* %237, %struct.tnode* %238, i32 %240, %struct.node* null)
  %242 = load %struct.tnode*, %struct.tnode** %15, align 8
  %243 = icmp ne %struct.tnode* %242, null
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = call i32 @BUG_ON(i32 %245)
  %247 = load %struct.tnode*, %struct.tnode** %5, align 8
  %248 = load i32, i32* %8, align 4
  %249 = mul nsw i32 2, %248
  %250 = add nsw i32 %249, 1
  %251 = call %struct.node* @tnode_get_child(%struct.tnode* %247, i32 %250)
  %252 = bitcast %struct.node* %251 to %struct.tnode*
  store %struct.tnode* %252, %struct.tnode** %16, align 8
  %253 = load %struct.trie*, %struct.trie** %4, align 8
  %254 = load %struct.tnode*, %struct.tnode** %5, align 8
  %255 = load i32, i32* %8, align 4
  %256 = mul nsw i32 2, %255
  %257 = add nsw i32 %256, 1
  %258 = call i32 @put_child(%struct.trie* %253, %struct.tnode* %254, i32 %257, %struct.node* null)
  %259 = load %struct.tnode*, %struct.tnode** %16, align 8
  %260 = icmp ne %struct.tnode* %259, null
  %261 = xor i1 %260, true
  %262 = zext i1 %261 to i32
  %263 = call i32 @BUG_ON(i32 %262)
  %264 = load %struct.tnode*, %struct.tnode** %15, align 8
  %265 = call i32 @tnode_child_length(%struct.tnode* %264)
  store i32 %265, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %266

266:                                              ; preds = %295, %231
  %267 = load i32, i32* %18, align 4
  %268 = load i32, i32* %17, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %298

270:                                              ; preds = %266
  %271 = load %struct.trie*, %struct.trie** %4, align 8
  %272 = load %struct.tnode*, %struct.tnode** %15, align 8
  %273 = load i32, i32* %18, align 4
  %274 = load %struct.tnode*, %struct.tnode** %13, align 8
  %275 = getelementptr inbounds %struct.tnode, %struct.tnode* %274, i32 0, i32 3
  %276 = load %struct.node**, %struct.node*** %275, align 8
  %277 = load i32, i32* %18, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.node*, %struct.node** %276, i64 %278
  %280 = load %struct.node*, %struct.node** %279, align 8
  %281 = call i32 @put_child(%struct.trie* %271, %struct.tnode* %272, i32 %273, %struct.node* %280)
  %282 = load %struct.trie*, %struct.trie** %4, align 8
  %283 = load %struct.tnode*, %struct.tnode** %16, align 8
  %284 = load i32, i32* %18, align 4
  %285 = load %struct.tnode*, %struct.tnode** %13, align 8
  %286 = getelementptr inbounds %struct.tnode, %struct.tnode* %285, i32 0, i32 3
  %287 = load %struct.node**, %struct.node*** %286, align 8
  %288 = load i32, i32* %18, align 4
  %289 = load i32, i32* %17, align 4
  %290 = add nsw i32 %288, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.node*, %struct.node** %287, i64 %291
  %293 = load %struct.node*, %struct.node** %292, align 8
  %294 = call i32 @put_child(%struct.trie* %282, %struct.tnode* %283, i32 %284, %struct.node* %293)
  br label %295

295:                                              ; preds = %270
  %296 = load i32, i32* %18, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %18, align 4
  br label %266

298:                                              ; preds = %266
  %299 = load %struct.trie*, %struct.trie** %4, align 8
  %300 = load %struct.tnode*, %struct.tnode** %5, align 8
  %301 = load i32, i32* %8, align 4
  %302 = mul nsw i32 2, %301
  %303 = load %struct.trie*, %struct.trie** %4, align 8
  %304 = load %struct.tnode*, %struct.tnode** %15, align 8
  %305 = call %struct.node* @resize(%struct.trie* %303, %struct.tnode* %304)
  %306 = call i32 @put_child(%struct.trie* %299, %struct.tnode* %300, i32 %302, %struct.node* %305)
  %307 = load %struct.trie*, %struct.trie** %4, align 8
  %308 = load %struct.tnode*, %struct.tnode** %5, align 8
  %309 = load i32, i32* %8, align 4
  %310 = mul nsw i32 2, %309
  %311 = add nsw i32 %310, 1
  %312 = load %struct.trie*, %struct.trie** %4, align 8
  %313 = load %struct.tnode*, %struct.tnode** %16, align 8
  %314 = call %struct.node* @resize(%struct.trie* %312, %struct.tnode* %313)
  %315 = call i32 @put_child(%struct.trie* %307, %struct.tnode* %308, i32 %311, %struct.node* %314)
  %316 = load %struct.tnode*, %struct.tnode** %13, align 8
  %317 = call i32 @tnode_free_safe(%struct.tnode* %316)
  br label %318

318:                                              ; preds = %298, %207, %199, %152
  %319 = load i32, i32* %8, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %8, align 4
  br label %142

321:                                              ; preds = %142
  %322 = load %struct.tnode*, %struct.tnode** %6, align 8
  %323 = call i32 @tnode_free_safe(%struct.tnode* %322)
  %324 = load %struct.tnode*, %struct.tnode** %5, align 8
  store %struct.tnode* %324, %struct.tnode** %3, align 8
  br label %361

325:                                              ; preds = %118, %100
  %326 = load %struct.tnode*, %struct.tnode** %5, align 8
  %327 = call i32 @tnode_child_length(%struct.tnode* %326)
  store i32 %327, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %328

328:                                              ; preds = %352, %325
  %329 = load i32, i32* %20, align 4
  %330 = load i32, i32* %19, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %332, label %355

332:                                              ; preds = %328
  %333 = load %struct.tnode*, %struct.tnode** %5, align 8
  %334 = getelementptr inbounds %struct.tnode, %struct.tnode* %333, i32 0, i32 3
  %335 = load %struct.node**, %struct.node*** %334, align 8
  %336 = load i32, i32* %20, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.node*, %struct.node** %335, i64 %337
  %339 = load %struct.node*, %struct.node** %338, align 8
  %340 = icmp ne %struct.node* %339, null
  br i1 %340, label %341, label %351

341:                                              ; preds = %332
  %342 = load %struct.tnode*, %struct.tnode** %5, align 8
  %343 = getelementptr inbounds %struct.tnode, %struct.tnode* %342, i32 0, i32 3
  %344 = load %struct.node**, %struct.node*** %343, align 8
  %345 = load i32, i32* %20, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.node*, %struct.node** %344, i64 %346
  %348 = load %struct.node*, %struct.node** %347, align 8
  %349 = bitcast %struct.node* %348 to %struct.tnode*
  %350 = call i32 @tnode_free(%struct.tnode* %349)
  br label %351

351:                                              ; preds = %341, %332
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %20, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %20, align 4
  br label %328

355:                                              ; preds = %328
  %356 = load %struct.tnode*, %struct.tnode** %5, align 8
  %357 = call i32 @tnode_free(%struct.tnode* %356)
  %358 = load i32, i32* @ENOMEM, align 4
  %359 = sub nsw i32 0, %358
  %360 = call %struct.tnode* @ERR_PTR(i32 %359)
  store %struct.tnode* %360, %struct.tnode** %3, align 8
  br label %361

361:                                              ; preds = %355, %321, %38
  %362 = load %struct.tnode*, %struct.tnode** %3, align 8
  ret %struct.tnode* %362
}

declare dso_local i32 @tnode_child_length(%struct.tnode*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.tnode* @tnode_new(i32, i32, i32) #1

declare dso_local %struct.tnode* @ERR_PTR(i32) #1

declare dso_local %struct.node* @tnode_get_child(%struct.tnode*, i32) #1

declare dso_local i64 @IS_TNODE(%struct.tnode*) #1

declare dso_local i32 @tnode_free(%struct.tnode*) #1

declare dso_local i32 @put_child(%struct.trie*, %struct.tnode*, i32, %struct.node*) #1

declare dso_local i64 @IS_LEAF(%struct.node*) #1

declare dso_local i64 @tkey_extract_bits(i32, i32, i32) #1

declare dso_local i32 @tnode_free_safe(%struct.tnode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.node* @resize(%struct.trie*, %struct.tnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
