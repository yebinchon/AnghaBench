; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_unicode.c_hfsplus_uni2asc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_unicode.c_hfsplus_uni2asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfsplus_unistr = type { i32, i32* }
%struct.nls_table = type { i32 (i32, i8*, i32)* }
%struct.TYPE_2__ = type { i32, %struct.nls_table* }

@HFSPLUS_SB_NODECOMPOSE = common dso_local global i32 0, align 4
@hfsplus_compose_table = common dso_local global i32* null, align 8
@Hangul_VBase = common dso_local global i32 0, align 4
@Hangul_VCount = common dso_local global i32 0, align 4
@Hangul_LBase = common dso_local global i32 0, align 4
@Hangul_TCount = common dso_local global i32 0, align 4
@Hangul_SBase = common dso_local global i64 0, align 8
@Hangul_TBase = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_uni2asc(%struct.super_block* %0, %struct.hfsplus_unistr* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.hfsplus_unistr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nls_table*, align 8
  %11 = alloca %struct.TYPE_2__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_2__, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.hfsplus_unistr* %1, %struct.hfsplus_unistr** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = call { i32, %struct.nls_table* } @HFSPLUS_SB(%struct.super_block* %24)
  %26 = bitcast %struct.TYPE_2__* %11 to { i32, %struct.nls_table* }*
  %27 = getelementptr inbounds { i32, %struct.nls_table* }, { i32, %struct.nls_table* }* %26, i32 0, i32 0
  %28 = extractvalue { i32, %struct.nls_table* } %25, 0
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds { i32, %struct.nls_table* }, { i32, %struct.nls_table* }* %26, i32 0, i32 1
  %30 = extractvalue { i32, %struct.nls_table* } %25, 1
  store %struct.nls_table* %30, %struct.nls_table** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %32 = load %struct.nls_table*, %struct.nls_table** %31, align 8
  store %struct.nls_table* %32, %struct.nls_table** %10, align 8
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %12, align 8
  %34 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %6, align 8
  %35 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %9, align 8
  %37 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %6, align 8
  %38 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @be16_to_cpu(i32 %39)
  store i32 %40, i32* %20, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %19, align 4
  store i32* null, i32** %16, align 8
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = call { i32, %struct.nls_table* } @HFSPLUS_SB(%struct.super_block* %43)
  %45 = bitcast %struct.TYPE_2__* %23 to { i32, %struct.nls_table* }*
  %46 = getelementptr inbounds { i32, %struct.nls_table* }, { i32, %struct.nls_table* }* %45, i32 0, i32 0
  %47 = extractvalue { i32, %struct.nls_table* } %44, 0
  store i32 %47, i32* %46, align 8
  %48 = getelementptr inbounds { i32, %struct.nls_table* }, { i32, %struct.nls_table* }* %45, i32 0, i32 1
  %49 = extractvalue { i32, %struct.nls_table* } %44, 1
  store %struct.nls_table* %49, %struct.nls_table** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @HFSPLUS_SB_NODECOMPOSE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %22, align 4
  br label %57

57:                                               ; preds = %266, %4
  %58 = load i32, i32* %20, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %274

60:                                               ; preds = %57
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %9, align 8
  %63 = load i32, i32* %61, align 4
  %64 = call i32 @be16_to_cpu(i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %20, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %22, align 4
  %68 = call i64 @likely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load i32*, i32** @hfsplus_compose_table, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32* @hfsplus_compose_lookup(i32* %71, i32 %72)
  store i32* %73, i32** %16, align 8
  br label %74

74:                                               ; preds = %70, %60
  %75 = load i32*, i32** %16, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %144

77:                                               ; preds = %74
  %78 = load i32*, i32** %16, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %144

82:                                               ; preds = %77
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 65535
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %248

86:                                               ; preds = %82
  %87 = load i32, i32* %20, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  br label %241

90:                                               ; preds = %86
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be16_to_cpu(i32 %92)
  %94 = load i32, i32* @Hangul_VBase, align 4
  %95 = sub nsw i32 %93, %94
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @Hangul_VCount, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %143

99:                                               ; preds = %90
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @Hangul_LBase, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32, i32* @Hangul_VCount, align 4
  %104 = mul nsw i32 %102, %103
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* @Hangul_TCount, align 4
  %109 = mul nsw i32 %107, %108
  store i32 %109, i32* %13, align 4
  %110 = load i64, i64* @Hangul_SBase, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %13, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %9, align 8
  %117 = load i32, i32* %20, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %20, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %99
  br label %248

122:                                              ; preds = %99
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @be16_to_cpu(i32 %124)
  %126 = load i32, i32* @Hangul_TBase, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %122
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @Hangul_TCount, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %13, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %9, align 8
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %20, align 4
  br label %142

142:                                              ; preds = %134, %130, %122
  br label %248

143:                                              ; preds = %90
  br label %144

144:                                              ; preds = %143, %77, %74
  br label %145

145:                                              ; preds = %144, %186
  %146 = load i32, i32* %20, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  br label %241

149:                                              ; preds = %145
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @be16_to_cpu(i32 %151)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %22, align 4
  %154 = call i64 @likely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %149
  %157 = load i32*, i32** @hfsplus_compose_table, align 8
  %158 = load i32, i32* %15, align 4
  %159 = call i32* @hfsplus_compose_lookup(i32* %157, i32 %158)
  store i32* %159, i32** %16, align 8
  br label %160

160:                                              ; preds = %156, %149
  %161 = load i32*, i32** %16, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %199

164:                                              ; preds = %160
  %165 = load i32, i32* %14, align 4
  switch i32 %165, label %168 [
    i32 0, label %166
    i32 47, label %167
  ]

166:                                              ; preds = %164
  store i32 9216, i32* %14, align 4
  br label %168

167:                                              ; preds = %164
  store i32 58, i32* %14, align 4
  br label %168

168:                                              ; preds = %164, %167, %166
  %169 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %170 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %169, i32 0, i32 0
  %171 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = load i8*, i8** %12, align 8
  %174 = load i32, i32* %19, align 4
  %175 = call i32 %171(i32 %172, i8* %173, i32 %174)
  store i32 %175, i32* %21, align 4
  %176 = load i32, i32* %21, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %168
  %179 = load i32, i32* %21, align 4
  %180 = load i32, i32* @ENAMETOOLONG, align 4
  %181 = sub nsw i32 0, %180
  %182 = icmp eq i32 %179, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %275

184:                                              ; preds = %178
  %185 = load i8*, i8** %12, align 8
  store i8 63, i8* %185, align 1
  store i32 1, i32* %21, align 4
  br label %186

186:                                              ; preds = %184, %168
  %187 = load i32, i32* %21, align 4
  %188 = load i8*, i8** %12, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  store i8* %190, i8** %12, align 8
  %191 = load i32, i32* %21, align 4
  %192 = load i32, i32* %19, align 4
  %193 = sub nsw i32 %192, %191
  store i32 %193, i32* %19, align 4
  %194 = load i32, i32* %15, align 4
  store i32 %194, i32* %14, align 4
  %195 = load i32*, i32** %9, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %9, align 8
  %197 = load i32, i32* %20, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %20, align 4
  br label %145

199:                                              ; preds = %163
  %200 = load i32*, i32** %16, align 8
  %201 = load i32, i32* %14, align 4
  %202 = call i32* @hfsplus_compose_lookup(i32* %200, i32 %201)
  store i32* %202, i32** %17, align 8
  %203 = load i32*, i32** %17, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %240

205:                                              ; preds = %199
  store i32 1, i32* %18, align 4
  br label %206

206:                                              ; preds = %222, %205
  %207 = load i32, i32* %18, align 4
  %208 = load i32, i32* %20, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %226

210:                                              ; preds = %206
  %211 = load i32*, i32** %17, align 8
  %212 = load i32*, i32** %9, align 8
  %213 = load i32, i32* %18, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @be16_to_cpu(i32 %216)
  %218 = call i32* @hfsplus_compose_lookup(i32* %211, i32 %217)
  store i32* %218, i32** %16, align 8
  %219 = load i32*, i32** %16, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %210
  br label %226

222:                                              ; preds = %210
  %223 = load i32, i32* %18, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %18, align 4
  %225 = load i32*, i32** %16, align 8
  store i32* %225, i32** %17, align 8
  br label %206

226:                                              ; preds = %221, %206
  %227 = load i32*, i32** %17, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %13, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %226
  %232 = load i32, i32* %18, align 4
  %233 = load i32*, i32** %9, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  store i32* %235, i32** %9, align 8
  %236 = load i32, i32* %18, align 4
  %237 = load i32, i32* %20, align 4
  %238 = sub nsw i32 %237, %236
  store i32 %238, i32* %20, align 4
  br label %248

239:                                              ; preds = %226
  br label %240

240:                                              ; preds = %239, %199
  br label %241

241:                                              ; preds = %240, %148, %89
  %242 = load i32, i32* %14, align 4
  switch i32 %242, label %245 [
    i32 0, label %243
    i32 47, label %244
  ]

243:                                              ; preds = %241
  store i32 9216, i32* %13, align 4
  br label %247

244:                                              ; preds = %241
  store i32 58, i32* %13, align 4
  br label %247

245:                                              ; preds = %241
  %246 = load i32, i32* %14, align 4
  store i32 %246, i32* %13, align 4
  br label %247

247:                                              ; preds = %245, %244, %243
  br label %248

248:                                              ; preds = %247, %231, %142, %121, %85
  %249 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %250 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %249, i32 0, i32 0
  %251 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %250, align 8
  %252 = load i32, i32* %13, align 4
  %253 = load i8*, i8** %12, align 8
  %254 = load i32, i32* %19, align 4
  %255 = call i32 %251(i32 %252, i8* %253, i32 %254)
  store i32 %255, i32* %21, align 4
  %256 = load i32, i32* %21, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %248
  %259 = load i32, i32* %21, align 4
  %260 = load i32, i32* @ENAMETOOLONG, align 4
  %261 = sub nsw i32 0, %260
  %262 = icmp eq i32 %259, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %258
  br label %275

264:                                              ; preds = %258
  %265 = load i8*, i8** %12, align 8
  store i8 63, i8* %265, align 1
  store i32 1, i32* %21, align 4
  br label %266

266:                                              ; preds = %264, %248
  %267 = load i32, i32* %21, align 4
  %268 = load i8*, i8** %12, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i8, i8* %268, i64 %269
  store i8* %270, i8** %12, align 8
  %271 = load i32, i32* %21, align 4
  %272 = load i32, i32* %19, align 4
  %273 = sub nsw i32 %272, %271
  store i32 %273, i32* %19, align 4
  br label %57

274:                                              ; preds = %57
  store i32 0, i32* %21, align 4
  br label %275

275:                                              ; preds = %274, %263, %183
  %276 = load i8*, i8** %12, align 8
  %277 = load i8*, i8** %7, align 8
  %278 = ptrtoint i8* %276 to i64
  %279 = ptrtoint i8* %277 to i64
  %280 = sub i64 %278, %279
  %281 = trunc i64 %280 to i32
  %282 = load i32*, i32** %8, align 8
  store i32 %281, i32* %282, align 4
  %283 = load i32, i32* %21, align 4
  ret i32 %283
}

declare dso_local { i32, %struct.nls_table* } @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @hfsplus_compose_lookup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
