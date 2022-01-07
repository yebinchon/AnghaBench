; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_insert_gclist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_insert_gclist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.completer_entry = type { %struct.TYPE_2__*, %struct.completer_entry*, %struct.completer_entry* }
%struct.TYPE_2__ = type { i64 }

@glistlen = common dso_local global i32 0, align 4
@glisttotlen = common dso_local global i32 0, align 4
@glist = common dso_local global %struct.completer_entry** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.completer_entry* (%struct.completer_entry*)* @insert_gclist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.completer_entry* @insert_gclist(%struct.completer_entry* %0) #0 {
  %2 = alloca %struct.completer_entry*, align 8
  %3 = alloca %struct.completer_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.completer_entry* %0, %struct.completer_entry** %3, align 8
  %9 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  %10 = icmp ne %struct.completer_entry* %9, null
  br i1 %10, label %11, label %282

11:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %12 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  %13 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %12, i32 0, i32 2
  %14 = load %struct.completer_entry*, %struct.completer_entry** %13, align 8
  %15 = call %struct.completer_entry* @insert_gclist(%struct.completer_entry* %14)
  %16 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  %17 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %16, i32 0, i32 2
  store %struct.completer_entry* %15, %struct.completer_entry** %17, align 8
  %18 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  %19 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %18, i32 0, i32 1
  %20 = load %struct.completer_entry*, %struct.completer_entry** %19, align 8
  %21 = call %struct.completer_entry* @insert_gclist(%struct.completer_entry* %20)
  %22 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  %23 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %22, i32 0, i32 1
  store %struct.completer_entry* %21, %struct.completer_entry** %23, align 8
  %24 = load i32, i32* @glistlen, align 4
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @glistlen, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @glisttotlen, align 4
  %28 = load i32, i32* @glistlen, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %11
  %31 = load i32, i32* @glisttotlen, align 4
  %32 = add nsw i32 %31, 20
  store i32 %32, i32* @glisttotlen, align 4
  %33 = load %struct.completer_entry**, %struct.completer_entry*** @glist, align 8
  %34 = load i32, i32* @glisttotlen, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 8, %35
  %37 = trunc i64 %36 to i32
  %38 = call i64 @xrealloc(%struct.completer_entry** %33, i32 %37)
  %39 = inttoptr i64 %38 to %struct.completer_entry**
  store %struct.completer_entry** %39, %struct.completer_entry*** @glist, align 8
  br label %40

40:                                               ; preds = %30, %11
  %41 = load i32, i32* @glistlen, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  %45 = load %struct.completer_entry**, %struct.completer_entry*** @glist, align 8
  %46 = getelementptr inbounds %struct.completer_entry*, %struct.completer_entry** %45, i64 0
  store %struct.completer_entry* %44, %struct.completer_entry** %46, align 8
  store i32 1, i32* @glistlen, align 4
  %47 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  store %struct.completer_entry* %47, %struct.completer_entry** %2, align 8
  br label %284

48:                                               ; preds = %40
  %49 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  %50 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.completer_entry**, %struct.completer_entry*** @glist, align 8
  %55 = getelementptr inbounds %struct.completer_entry*, %struct.completer_entry** %54, i64 0
  %56 = load %struct.completer_entry*, %struct.completer_entry** %55, align 8
  %57 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %53, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %195

63:                                               ; preds = %48
  %64 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  %65 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.completer_entry**, %struct.completer_entry*** @glist, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.completer_entry*, %struct.completer_entry** %69, i64 %72
  %74 = load %struct.completer_entry*, %struct.completer_entry** %73, align 8
  %75 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %68, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %63
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %4, align 4
  br label %194

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %148
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %84, %85
  %87 = sdiv i32 %86, 2
  store i32 %87, i32* %4, align 4
  %88 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  %89 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.completer_entry**, %struct.completer_entry*** @glist, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.completer_entry*, %struct.completer_entry** %93, i64 %95
  %97 = load %struct.completer_entry*, %struct.completer_entry** %96, align 8
  %98 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %92, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %83
  %107 = load i32, i32* %4, align 4
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %143

109:                                              ; preds = %83
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %139

112:                                              ; preds = %109
  br label %113

113:                                              ; preds = %135, %112
  %114 = load i32, i32* %4, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  %118 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.completer_entry**, %struct.completer_entry*** @glist, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.completer_entry*, %struct.completer_entry** %122, i64 %125
  %127 = load %struct.completer_entry*, %struct.completer_entry** %126, align 8
  %128 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %121, %131
  br label %133

133:                                              ; preds = %116, %113
  %134 = phi i1 [ false, %113 ], [ %132, %116 ]
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %4, align 4
  br label %113

138:                                              ; preds = %133
  br label %149

139:                                              ; preds = %109
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %139
  br label %143

143:                                              ; preds = %142, %106
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %149

148:                                              ; preds = %143
  br label %83

149:                                              ; preds = %147, %138
  %150 = load i32, i32* %8, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %193

152:                                              ; preds = %149
  br label %153

153:                                              ; preds = %189, %152
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @glistlen, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %192

157:                                              ; preds = %153
  %158 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  %159 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.completer_entry**, %struct.completer_entry*** @glist, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.completer_entry*, %struct.completer_entry** %163, i64 %165
  %167 = load %struct.completer_entry*, %struct.completer_entry** %166, align 8
  %168 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %167, i32 0, i32 0
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %162, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %157
  br label %192

174:                                              ; preds = %157
  %175 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  %176 = load %struct.completer_entry**, %struct.completer_entry*** @glist, align 8
  %177 = load i32, i32* %4, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.completer_entry*, %struct.completer_entry** %176, i64 %178
  %180 = load %struct.completer_entry*, %struct.completer_entry** %179, align 8
  %181 = call i64 @completer_entries_eq(%struct.completer_entry* %175, %struct.completer_entry* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %174
  %184 = load %struct.completer_entry**, %struct.completer_entry*** @glist, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.completer_entry*, %struct.completer_entry** %184, i64 %186
  %188 = load %struct.completer_entry*, %struct.completer_entry** %187, align 8
  store %struct.completer_entry* %188, %struct.completer_entry** %2, align 8
  br label %284

189:                                              ; preds = %174
  %190 = load i32, i32* %4, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %4, align 4
  br label %153

192:                                              ; preds = %173, %153
  br label %193

193:                                              ; preds = %192, %149
  br label %194

194:                                              ; preds = %193, %80
  br label %195

195:                                              ; preds = %194, %62
  br label %196

196:                                              ; preds = %224, %195
  %197 = load i32, i32* %4, align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* @glistlen, align 4
  %202 = icmp slt i32 %200, %201
  br label %203

203:                                              ; preds = %199, %196
  %204 = phi i1 [ false, %196 ], [ %202, %199 ]
  br i1 %204, label %205, label %227

205:                                              ; preds = %203
  %206 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  %207 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %206, i32 0, i32 0
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.completer_entry**, %struct.completer_entry*** @glist, align 8
  %212 = load i32, i32* %4, align 4
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.completer_entry*, %struct.completer_entry** %211, i64 %214
  %216 = load %struct.completer_entry*, %struct.completer_entry** %215, align 8
  %217 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %216, i32 0, i32 0
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp sge i64 %210, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %205
  br label %227

223:                                              ; preds = %205
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %4, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %4, align 4
  br label %196

227:                                              ; preds = %222, %203
  br label %228

228:                                              ; preds = %250, %227
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* @glistlen, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %253

232:                                              ; preds = %228
  %233 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  %234 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %233, i32 0, i32 0
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.completer_entry**, %struct.completer_entry*** @glist, align 8
  %239 = load i32, i32* %4, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.completer_entry*, %struct.completer_entry** %238, i64 %240
  %242 = load %struct.completer_entry*, %struct.completer_entry** %241, align 8
  %243 = getelementptr inbounds %struct.completer_entry, %struct.completer_entry* %242, i32 0, i32 0
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp slt i64 %237, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %232
  br label %253

249:                                              ; preds = %232
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %4, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %4, align 4
  br label %228

253:                                              ; preds = %248, %228
  %254 = load i32, i32* @glistlen, align 4
  %255 = sub nsw i32 %254, 1
  store i32 %255, i32* %5, align 4
  br label %256

256:                                              ; preds = %271, %253
  %257 = load i32, i32* %5, align 4
  %258 = load i32, i32* %4, align 4
  %259 = icmp sge i32 %257, %258
  br i1 %259, label %260, label %274

260:                                              ; preds = %256
  %261 = load %struct.completer_entry**, %struct.completer_entry*** @glist, align 8
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.completer_entry*, %struct.completer_entry** %261, i64 %263
  %265 = load %struct.completer_entry*, %struct.completer_entry** %264, align 8
  %266 = load %struct.completer_entry**, %struct.completer_entry*** @glist, align 8
  %267 = load i32, i32* %5, align 4
  %268 = add nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.completer_entry*, %struct.completer_entry** %266, i64 %269
  store %struct.completer_entry* %265, %struct.completer_entry** %270, align 8
  br label %271

271:                                              ; preds = %260
  %272 = load i32, i32* %5, align 4
  %273 = add nsw i32 %272, -1
  store i32 %273, i32* %5, align 4
  br label %256

274:                                              ; preds = %256
  %275 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  %276 = load %struct.completer_entry**, %struct.completer_entry*** @glist, align 8
  %277 = load i32, i32* %4, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.completer_entry*, %struct.completer_entry** %276, i64 %278
  store %struct.completer_entry* %275, %struct.completer_entry** %279, align 8
  %280 = load i32, i32* @glistlen, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* @glistlen, align 4
  br label %282

282:                                              ; preds = %274, %1
  %283 = load %struct.completer_entry*, %struct.completer_entry** %3, align 8
  store %struct.completer_entry* %283, %struct.completer_entry** %2, align 8
  br label %284

284:                                              ; preds = %282, %183, %43
  %285 = load %struct.completer_entry*, %struct.completer_entry** %2, align 8
  ret %struct.completer_entry* %285
}

declare dso_local i64 @xrealloc(%struct.completer_entry**, i32) #1

declare dso_local i64 @completer_entries_eq(%struct.completer_entry*, %struct.completer_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
