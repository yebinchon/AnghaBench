; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_xlate_to_uni.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_xlate_to_uni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 (i8*, i32, i32*)* }

@UTF16_HOST_ENDIAN = common dso_local global i32 0, align 4
@FAT_LFN_LEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32*, i32*, i32, i32, %struct.nls_table*)* @xlate_to_uni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlate_to_uni(i8* %0, i32 %1, i8* %2, i32* %3, i32* %4, i32 %5, i32 %6, %struct.nls_table* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nls_table*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8, align 1
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.nls_table* %7, %struct.nls_table** %17, align 8
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @UTF16_HOST_ENDIAN, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i32, i32* @FAT_LFN_LEN, align 4
  %35 = add nsw i32 %34, 2
  %36 = call i32 @utf8s_to_utf16s(i8* %29, i32 %30, i32 %31, i32* %33, i32 %35)
  %37 = load i32*, i32** %14, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  br label %288

44:                                               ; preds = %28
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FAT_LFN_LEN, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ENAMETOOLONG, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %288

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %12, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  store i8* %59, i8** %20, align 8
  br label %244

60:                                               ; preds = %8
  %61 = load %struct.nls_table*, %struct.nls_table** %17, align 8
  %62 = icmp ne %struct.nls_table* %61, null
  br i1 %62, label %63, label %206

63:                                               ; preds = %60
  store i32 0, i32* %22, align 4
  %64 = load i8*, i8** %10, align 8
  store i8* %64, i8** %18, align 8
  %65 = load i8*, i8** %12, align 8
  store i8* %65, i8** %20, align 8
  %66 = load i32*, i32** %14, align 8
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %194, %63
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @FAT_LFN_LEN, align 4
  %75 = icmp sle i32 %73, %74
  br label %76

76:                                               ; preds = %71, %67
  %77 = phi i1 [ false, %67 ], [ %75, %71 ]
  br i1 %77, label %78, label %198

78:                                               ; preds = %76
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %168

81:                                               ; preds = %78
  %82 = load i8*, i8** %18, align 8
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 58
  br i1 %85, label %86, label %168

86:                                               ; preds = %81
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %88, 5
  %90 = icmp sgt i32 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %9, align 4
  br label %288

94:                                               ; preds = %86
  store i32 0, i32* %21, align 4
  store i32 1, i32* %23, align 4
  br label %95

95:                                               ; preds = %150, %94
  %96 = load i32, i32* %23, align 4
  %97 = icmp slt i32 %96, 5
  br i1 %97, label %98, label %153

98:                                               ; preds = %95
  %99 = load i8*, i8** %18, align 8
  %100 = load i32, i32* %23, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  store i8 %103, i8* %19, align 1
  %104 = load i32, i32* %21, align 4
  %105 = shl i32 %104, 4
  store i32 %105, i32* %21, align 4
  %106 = load i8, i8* %19, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp sge i32 %107, 48
  br i1 %108, label %109, label %119

109:                                              ; preds = %98
  %110 = load i8, i8* %19, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp sle i32 %111, 57
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i8, i8* %19, align 1
  %115 = zext i8 %114 to i32
  %116 = sub nsw i32 %115, 48
  %117 = load i32, i32* %21, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %21, align 4
  br label %150

119:                                              ; preds = %109, %98
  %120 = load i8, i8* %19, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp sge i32 %121, 97
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load i8, i8* %19, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp sle i32 %125, 102
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load i8, i8* %19, align 1
  %129 = zext i8 %128 to i32
  %130 = sub nsw i32 %129, 87
  %131 = load i32, i32* %21, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %21, align 4
  br label %150

133:                                              ; preds = %123, %119
  %134 = load i8, i8* %19, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp sge i32 %135, 65
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load i8, i8* %19, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp sle i32 %139, 70
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i8, i8* %19, align 1
  %143 = zext i8 %142 to i32
  %144 = sub nsw i32 %143, 55
  %145 = load i32, i32* %21, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %21, align 4
  br label %150

147:                                              ; preds = %137, %133
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %9, align 4
  br label %288

150:                                              ; preds = %141, %127, %113
  %151 = load i32, i32* %23, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %23, align 4
  br label %95

153:                                              ; preds = %95
  %154 = load i32, i32* %21, align 4
  %155 = and i32 %154, 255
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %20, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %20, align 8
  store i8 %156, i8* %157, align 1
  %159 = load i32, i32* %21, align 4
  %160 = lshr i32 %159, 8
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %20, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %20, align 8
  store i8 %161, i8* %162, align 1
  %164 = load i8*, i8** %18, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 5
  store i8* %165, i8** %18, align 8
  %166 = load i32, i32* %22, align 4
  %167 = add nsw i32 %166, 5
  store i32 %167, i32* %22, align 4
  br label %193

168:                                              ; preds = %81, %78
  %169 = load %struct.nls_table*, %struct.nls_table** %17, align 8
  %170 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %169, i32 0, i32 0
  %171 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %170, align 8
  %172 = load i8*, i8** %18, align 8
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %22, align 4
  %175 = sub nsw i32 %173, %174
  %176 = load i8*, i8** %20, align 8
  %177 = bitcast i8* %176 to i32*
  %178 = call i32 %171(i8* %172, i32 %175, i32* %177)
  store i32 %178, i32* %25, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %168
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %9, align 4
  br label %288

183:                                              ; preds = %168
  %184 = load i32, i32* %25, align 4
  %185 = load i8*, i8** %18, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  store i8* %187, i8** %18, align 8
  %188 = load i32, i32* %25, align 4
  %189 = load i32, i32* %22, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %22, align 4
  %191 = load i8*, i8** %20, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 2
  store i8* %192, i8** %20, align 8
  br label %193

193:                                              ; preds = %183, %153
  br label %194

194:                                              ; preds = %193
  %195 = load i32*, i32** %14, align 8
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 4
  br label %67

198:                                              ; preds = %76
  %199 = load i32, i32* %22, align 4
  %200 = load i32, i32* %11, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i32, i32* @ENAMETOOLONG, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %9, align 4
  br label %288

205:                                              ; preds = %198
  br label %243

206:                                              ; preds = %60
  store i32 0, i32* %22, align 4
  %207 = load i8*, i8** %10, align 8
  store i8* %207, i8** %18, align 8
  %208 = load i8*, i8** %12, align 8
  store i8* %208, i8** %20, align 8
  %209 = load i32*, i32** %14, align 8
  store i32 0, i32* %209, align 4
  br label %210

210:                                              ; preds = %229, %206
  %211 = load i32, i32* %22, align 4
  %212 = load i32, i32* %11, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = load i32*, i32** %14, align 8
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @FAT_LFN_LEN, align 4
  %218 = icmp sle i32 %216, %217
  br label %219

219:                                              ; preds = %214, %210
  %220 = phi i1 [ false, %210 ], [ %218, %214 ]
  br i1 %220, label %221, label %235

221:                                              ; preds = %219
  %222 = load i8*, i8** %18, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %18, align 8
  %224 = load i8, i8* %222, align 1
  %225 = load i8*, i8** %20, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %20, align 8
  store i8 %224, i8* %225, align 1
  %227 = load i8*, i8** %20, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %20, align 8
  store i8 0, i8* %227, align 1
  br label %229

229:                                              ; preds = %221
  %230 = load i32, i32* %22, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %22, align 4
  %232 = load i32*, i32** %14, align 8
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %232, align 4
  br label %210

235:                                              ; preds = %219
  %236 = load i32, i32* %22, align 4
  %237 = load i32, i32* %11, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load i32, i32* @ENAMETOOLONG, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %9, align 4
  br label %288

242:                                              ; preds = %235
  br label %243

243:                                              ; preds = %242, %205
  br label %244

244:                                              ; preds = %243, %53
  %245 = load i32*, i32** %14, align 8
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %13, align 8
  store i32 %246, i32* %247, align 4
  %248 = load i32*, i32** %14, align 8
  %249 = load i32, i32* %248, align 4
  %250 = srem i32 %249, 13
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %287

252:                                              ; preds = %244
  %253 = load i8*, i8** %20, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %20, align 8
  store i8 0, i8* %253, align 1
  %255 = load i8*, i8** %20, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %20, align 8
  store i8 0, i8* %255, align 1
  %257 = load i32*, i32** %14, align 8
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %257, align 4
  %260 = load i32*, i32** %14, align 8
  %261 = load i32, i32* %260, align 4
  %262 = srem i32 %261, 13
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %286

264:                                              ; preds = %252
  %265 = load i32*, i32** %14, align 8
  %266 = load i32, i32* %265, align 4
  %267 = srem i32 %266, 13
  %268 = sub nsw i32 13, %267
  store i32 %268, i32* %24, align 4
  store i32 0, i32* %22, align 4
  br label %269

269:                                              ; preds = %278, %264
  %270 = load i32, i32* %22, align 4
  %271 = load i32, i32* %24, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %281

273:                                              ; preds = %269
  %274 = load i8*, i8** %20, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %20, align 8
  store i8 -1, i8* %274, align 1
  %276 = load i8*, i8** %20, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %20, align 8
  store i8 -1, i8* %276, align 1
  br label %278

278:                                              ; preds = %273
  %279 = load i32, i32* %22, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %22, align 4
  br label %269

281:                                              ; preds = %269
  %282 = load i32, i32* %24, align 4
  %283 = load i32*, i32** %14, align 8
  %284 = load i32, i32* %283, align 4
  %285 = add nsw i32 %284, %282
  store i32 %285, i32* %283, align 4
  br label %286

286:                                              ; preds = %281, %252
  br label %287

287:                                              ; preds = %286, %244
  store i32 0, i32* %9, align 4
  br label %288

288:                                              ; preds = %287, %239, %202, %180, %147, %91, %49, %41
  %289 = load i32, i32* %9, align 4
  ret i32 %289
}

declare dso_local i32 @utf8s_to_utf16s(i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
