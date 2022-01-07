; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_locate_opcode_ent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_locate_opcode_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i16, i64 }

@ia64_dis_names = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @locate_opcode_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locate_opcode_ent(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [41 x i32], align 16
  %6 = alloca [41 x i32], align 16
  %7 = alloca [41 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i16 -1, i16* %9, align 2
  store i16 -1, i16* %10, align 2
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [41 x i32], [41 x i32]* %5, i64 0, i64 %25
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [41 x i32], [41 x i32]* %7, i64 0, i64 %28
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [41 x i32], [41 x i32]* %6, i64 0, i64 %31
  store i32 40, i32* %32, align 4
  br label %33

33:                                               ; preds = %2, %270
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [41 x i32], [41 x i32]* %7, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [41 x i32], [41 x i32]* %6, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = bitcast [3 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %42, i8 0, i64 12, i1 false)
  %43 = load i32, i32* %11, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %45 = call i32 @extract_op(i32 %43, i32* %44, i32* %12)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [41 x i32], [41 x i32]* %6, i64 0, i64 %48
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %12, align 4
  %51 = and i32 %50, 64
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %33
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %13, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %53, %33
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %13, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  store i32 %65, i32* %17, align 4
  store i32 -1, i32* %16, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [41 x i32], [41 x i32]* %5, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %173 [
    i32 0, label %70
    i32 1, label %136
    i32 2, label %156
  ]

70:                                               ; preds = %58
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [41 x i32], [41 x i32]* %5, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %135

78:                                               ; preds = %70
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, 128
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %135

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, 248
  %85 = icmp eq i32 %84, 128
  br i1 %85, label %86, label %124

86:                                               ; preds = %82
  %87 = load i32, i32* %12, align 4
  %88 = and i32 %87, 7
  store i32 %88, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %89

89:                                               ; preds = %107, %86
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %89
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %19, align 4
  %97 = sub nsw i32 %95, %96
  %98 = shl i32 1, %97
  %99 = and i32 %94, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1, i32 0
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* %20, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %93
  br label %110

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %19, align 4
  br label %89

110:                                              ; preds = %105, %89
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 7
  %118 = sdiv i32 %117, 8
  %119 = add nsw i32 %115, %118
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %13, align 4
  %122 = sub nsw i32 %121, %120
  store i32 %122, i32* %13, align 4
  br label %173

123:                                              ; preds = %110
  br label %134

124:                                              ; preds = %82
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 7
  %131 = sdiv i32 %130, 8
  %132 = add nsw i32 %128, %131
  store i32 %132, i32* %16, align 4
  br label %173

133:                                              ; preds = %124
  br label %134

134:                                              ; preds = %133, %123
  br label %135

135:                                              ; preds = %134, %78, %70
  br label %136

136:                                              ; preds = %58, %135
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [41 x i32], [41 x i32]* %5, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* %17, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %136
  %145 = load i32, i32* %12, align 4
  %146 = and i32 %145, 48
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load i32, i32* %12, align 4
  %150 = and i32 %149, 48
  %151 = icmp ne i32 %150, 48
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %16, align 4
  br label %173

155:                                              ; preds = %148, %144, %136
  br label %156

156:                                              ; preds = %58, %155
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [41 x i32], [41 x i32]* %5, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* %12, align 4
  %163 = and i32 %162, 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %156
  %166 = load i32, i32* %12, align 4
  %167 = and i32 %166, 48
  %168 = icmp eq i32 %167, 48
  br i1 %168, label %169, label %172

169:                                              ; preds = %165, %156
  %170 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %16, align 4
  br label %173

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %172, %58, %169, %152, %127, %114
  %174 = load i32, i32* %16, align 4
  %175 = icmp sge i32 %174, 0
  br i1 %175, label %176, label %239

176:                                              ; preds = %173
  %177 = load i32, i32* %16, align 4
  %178 = and i32 %177, 32768
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %239

180:                                              ; preds = %176
  %181 = load i32, i32* %16, align 4
  %182 = and i32 %181, 32767
  %183 = trunc i32 %182 to i16
  store i16 %183, i16* %21, align 2
  store i16 -1, i16* %22, align 2
  %184 = load i32, i32* %16, align 4
  %185 = icmp sgt i32 %184, 65535
  br i1 %185, label %186, label %188

186:                                              ; preds = %180
  %187 = call i32 (...) @abort() #4
  unreachable

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %230, %188
  %190 = load i16, i16* %21, align 2
  %191 = sext i16 %190 to i32
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %231

193:                                              ; preds = %189
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ia64_dis_names, align 8
  %195 = load i16, i16* %21, align 2
  %196 = sext i16 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %23, align 4
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ia64_dis_names, align 8
  %201 = load i16, i16* %21, align 2
  %202 = sext i16 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 1
  %205 = load i16, i16* %204, align 4
  store i16 %205, i16* %22, align 2
  %206 = load i32, i32* %3, align 4
  %207 = load i32, i32* %23, align 4
  %208 = load i32, i32* %4, align 4
  %209 = call i64 @opcode_verify(i32 %206, i32 %207, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %193
  %212 = load i16, i16* %22, align 2
  %213 = sext i16 %212 to i32
  %214 = load i16, i16* %10, align 2
  %215 = sext i16 %214 to i32
  %216 = icmp sgt i32 %213, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %231

218:                                              ; preds = %211, %193
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ia64_dis_names, align 8
  %220 = load i16, i16* %21, align 2
  %221 = sext i16 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %218
  %227 = load i16, i16* %21, align 2
  %228 = add i16 %227, 1
  store i16 %228, i16* %21, align 2
  br label %230

229:                                              ; preds = %218
  store i16 -1, i16* %21, align 2
  br label %230

230:                                              ; preds = %229, %226
  br label %189

231:                                              ; preds = %217, %189
  %232 = load i16, i16* %21, align 2
  %233 = sext i16 %232 to i32
  %234 = icmp sge i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = load i16, i16* %21, align 2
  store i16 %236, i16* %9, align 2
  %237 = load i16, i16* %22, align 2
  store i16 %237, i16* %10, align 2
  br label %238

238:                                              ; preds = %235, %231
  store i32 -2, i32* %16, align 4
  br label %239

239:                                              ; preds = %238, %176, %173
  %240 = load i32, i32* %16, align 4
  %241 = icmp eq i32 %240, -1
  br i1 %241, label %242, label %251

242:                                              ; preds = %239
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %8, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load i16, i16* %9, align 2
  %249 = sext i16 %248 to i32
  ret i32 %249

250:                                              ; preds = %242
  br label %270

251:                                              ; preds = %239
  %252 = load i32, i32* %16, align 4
  %253 = icmp sge i32 %252, 0
  br i1 %253, label %254, label %269

254:                                              ; preds = %251
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  %257 = load i32, i32* %13, align 4
  %258 = sub nsw i32 %257, 1
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [41 x i32], [41 x i32]* %6, i64 0, i64 %260
  store i32 %258, i32* %261, align 4
  %262 = load i32, i32* %16, align 4
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [41 x i32], [41 x i32]* %7, i64 0, i64 %264
  store i32 %262, i32* %265, align 4
  %266 = load i32, i32* %8, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [41 x i32], [41 x i32]* %5, i64 0, i64 %267
  store i32 0, i32* %268, align 4
  br label %269

269:                                              ; preds = %254, %251
  br label %270

270:                                              ; preds = %269, %250
  br label %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @extract_op(i32, i32*, i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i64 @opcode_verify(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
