; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_compress.c_generateMTFValues.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_compress.c_generateMTFValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i64*, i64*, i32, i64, i64*, i64, i64* }

@.str = private unnamed_addr constant [21 x i8] c"generateMTFValues(1)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"generateMTFValues(2a)\00", align 1
@True = common dso_local global i64 0, align 8
@BZ_RUNB = common dso_local global i64 0, align 8
@BZ_RUNA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @generateMTFValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateMTFValues(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca [256 x i64], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %9, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %10, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %11, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = call i32 @makeMaps_e(%struct.TYPE_4__* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %8, align 8
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %43, %1
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 7
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %33

46:                                               ; preds = %33
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %4, align 8
  br label %47

47:                                               ; preds = %58, %46
  %48 = load i64, i64* %4, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %48, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %56
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %4, align 8
  br label %47

61:                                               ; preds = %47
  store i64 0, i64* %4, align 8
  br label %62

62:                                               ; preds = %207, %61
  %63 = load i64, i64* %4, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %210

68:                                               ; preds = %62
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %4, align 8
  %71 = icmp ule i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @AssertD(i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %77, 1
  store i64 %78, i64* %5, align 8
  %79 = load i64, i64* %5, align 8
  %80 = icmp ult i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %68
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %5, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %81, %68
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 5
  %90 = load i64*, i64** %89, align 8
  %91 = load i64*, i64** %10, align 8
  %92 = load i64, i64* %5, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i64, i64* %90, i64 %94
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %12, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %97, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @AssertD(i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %105 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %106 = load i64, i64* %105, align 16
  %107 = load i64, i64* %12, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %87
  %110 = load i64, i64* %6, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %6, align 8
  br label %206

112:                                              ; preds = %87
  %113 = load i64, i64* %6, align 8
  %114 = icmp ugt i64 %113, 0
  br i1 %114, label %115, label %162

115:                                              ; preds = %112
  %116 = load i64, i64* %6, align 8
  %117 = add i64 %116, -1
  store i64 %117, i64* %6, align 8
  br label %118

118:                                              ; preds = %157, %115
  %119 = load i64, i64* @True, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %161

121:                                              ; preds = %118
  %122 = load i64, i64* %6, align 8
  %123 = and i64 %122, 1
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %121
  %126 = load i64, i64* @BZ_RUNB, align 8
  %127 = load i64*, i64** %11, align 8
  %128 = load i64, i64* %7, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  store i64 %126, i64* %129, align 8
  %130 = load i64, i64* %7, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %7, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 7
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* @BZ_RUNB, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %136, align 8
  br label %153

139:                                              ; preds = %121
  %140 = load i64, i64* @BZ_RUNA, align 8
  %141 = load i64*, i64** %11, align 8
  %142 = load i64, i64* %7, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  store i64 %140, i64* %143, align 8
  %144 = load i64, i64* %7, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %7, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 7
  %148 = load i64*, i64** %147, align 8
  %149 = load i64, i64* @BZ_RUNA, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %150, align 8
  br label %153

153:                                              ; preds = %139, %125
  %154 = load i64, i64* %6, align 8
  %155 = icmp ult i64 %154, 2
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %161

157:                                              ; preds = %153
  %158 = load i64, i64* %6, align 8
  %159 = sub i64 %158, 2
  %160 = udiv i64 %159, 2
  store i64 %160, i64* %6, align 8
  br label %118

161:                                              ; preds = %156, %118
  store i64 0, i64* %6, align 8
  br label %162

162:                                              ; preds = %161, %112
  %163 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 1
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %13, align 8
  %165 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %166 = load i64, i64* %165, align 16
  %167 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 1
  store i64 %166, i64* %167, align 8
  %168 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 1
  store i64* %168, i64** %14, align 8
  %169 = load i64, i64* %12, align 8
  store i64 %169, i64* %15, align 8
  br label %170

170:                                              ; preds = %174, %162
  %171 = load i64, i64* %15, align 8
  %172 = load i64, i64* %13, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %170
  %175 = load i64*, i64** %14, align 8
  %176 = getelementptr inbounds i64, i64* %175, i32 1
  store i64* %176, i64** %14, align 8
  %177 = load i64, i64* %13, align 8
  store i64 %177, i64* %16, align 8
  %178 = load i64*, i64** %14, align 8
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %13, align 8
  %180 = load i64, i64* %16, align 8
  %181 = load i64*, i64** %14, align 8
  store i64 %180, i64* %181, align 8
  br label %170

182:                                              ; preds = %170
  %183 = load i64, i64* %13, align 8
  %184 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  store i64 %183, i64* %184, align 16
  %185 = load i64*, i64** %14, align 8
  %186 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %187 = ptrtoint i64* %185 to i64
  %188 = ptrtoint i64* %186 to i64
  %189 = sub i64 %187, %188
  %190 = sdiv exact i64 %189, 8
  store i64 %190, i64* %5, align 8
  %191 = load i64, i64* %5, align 8
  %192 = add i64 %191, 1
  %193 = load i64*, i64** %11, align 8
  %194 = load i64, i64* %7, align 8
  %195 = getelementptr inbounds i64, i64* %193, i64 %194
  store i64 %192, i64* %195, align 8
  %196 = load i64, i64* %7, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %7, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 7
  %200 = load i64*, i64** %199, align 8
  %201 = load i64, i64* %5, align 8
  %202 = add i64 %201, 1
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %203, align 8
  br label %206

206:                                              ; preds = %182, %109
  br label %207

207:                                              ; preds = %206
  %208 = load i64, i64* %4, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %4, align 8
  br label %62

210:                                              ; preds = %62
  %211 = load i64, i64* %6, align 8
  %212 = icmp ugt i64 %211, 0
  br i1 %212, label %213, label %260

213:                                              ; preds = %210
  %214 = load i64, i64* %6, align 8
  %215 = add i64 %214, -1
  store i64 %215, i64* %6, align 8
  br label %216

216:                                              ; preds = %255, %213
  %217 = load i64, i64* @True, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %259

219:                                              ; preds = %216
  %220 = load i64, i64* %6, align 8
  %221 = and i64 %220, 1
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %237

223:                                              ; preds = %219
  %224 = load i64, i64* @BZ_RUNB, align 8
  %225 = load i64*, i64** %11, align 8
  %226 = load i64, i64* %7, align 8
  %227 = getelementptr inbounds i64, i64* %225, i64 %226
  store i64 %224, i64* %227, align 8
  %228 = load i64, i64* %7, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %7, align 8
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 7
  %232 = load i64*, i64** %231, align 8
  %233 = load i64, i64* @BZ_RUNB, align 8
  %234 = getelementptr inbounds i64, i64* %232, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %235, 1
  store i64 %236, i64* %234, align 8
  br label %251

237:                                              ; preds = %219
  %238 = load i64, i64* @BZ_RUNA, align 8
  %239 = load i64*, i64** %11, align 8
  %240 = load i64, i64* %7, align 8
  %241 = getelementptr inbounds i64, i64* %239, i64 %240
  store i64 %238, i64* %241, align 8
  %242 = load i64, i64* %7, align 8
  %243 = add i64 %242, 1
  store i64 %243, i64* %7, align 8
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 7
  %246 = load i64*, i64** %245, align 8
  %247 = load i64, i64* @BZ_RUNA, align 8
  %248 = getelementptr inbounds i64, i64* %246, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %249, 1
  store i64 %250, i64* %248, align 8
  br label %251

251:                                              ; preds = %237, %223
  %252 = load i64, i64* %6, align 8
  %253 = icmp ult i64 %252, 2
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  br label %259

255:                                              ; preds = %251
  %256 = load i64, i64* %6, align 8
  %257 = sub i64 %256, 2
  %258 = udiv i64 %257, 2
  store i64 %258, i64* %6, align 8
  br label %216

259:                                              ; preds = %254, %216
  store i64 0, i64* %6, align 8
  br label %260

260:                                              ; preds = %259, %210
  %261 = load i64, i64* %8, align 8
  %262 = load i64*, i64** %11, align 8
  %263 = load i64, i64* %7, align 8
  %264 = getelementptr inbounds i64, i64* %262, i64 %263
  store i64 %261, i64* %264, align 8
  %265 = load i64, i64* %7, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %7, align 8
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 7
  %269 = load i64*, i64** %268, align 8
  %270 = load i64, i64* %8, align 8
  %271 = getelementptr inbounds i64, i64* %269, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = add nsw i64 %272, 1
  store i64 %273, i64* %271, align 8
  %274 = load i64, i64* %7, align 8
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 6
  store i64 %274, i64* %276, align 8
  ret void
}

declare dso_local i32 @makeMaps_e(%struct.TYPE_4__*) #1

declare dso_local i32 @AssertD(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
