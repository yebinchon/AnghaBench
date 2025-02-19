; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decimal128.c_decimal128FromNumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decimal128.c_decimal128FromNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32* }
%struct.TYPE_19__ = type { i32, i64, i32, i64* }
%struct.TYPE_20__ = type { i32, i32 }

@DECNEG = common dso_local global i32 0, align 4
@DECSPECIAL = common dso_local global i32 0, align 4
@DECIMAL128_Pmax = common dso_local global i32 0, align 4
@DECIMAL128_Emax = common dso_local global i64 0, align 8
@DECIMAL128_Emin = common dso_local global i64 0, align 8
@DEC_INIT_DECIMAL128 = common dso_local global i32 0, align 4
@DECINF = common dso_local global i32 0, align 4
@DECIMAL_Inf = common dso_local global i8* null, align 8
@DECNAN = common dso_local global i32 0, align 4
@DECIMAL_NaN = common dso_local global i8* null, align 8
@DECIMAL_sNaN = common dso_local global i8* null, align 8
@DECIMAL128_Bias = common dso_local global i64 0, align 8
@DEC_Clamped = common dso_local global i32 0, align 4
@DECIMAL128_Ehigh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @decimal128FromNumber(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca %struct.TYPE_20__, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DECNEG, align 4
  %21 = and i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %11, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DECSPECIAL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %67, label %30

30:                                               ; preds = %3
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  %39 = sub nsw i64 %38, 1
  store i64 %39, i64* %14, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DECIMAL128_Pmax, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %30
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* @DECIMAL128_Emax, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @DECIMAL128_Emin, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49, %45, %30
  %54 = load i32, i32* @DEC_INIT_DECIMAL128, align 4
  %55 = call i32 @decContextDefault(%struct.TYPE_20__* %10, i32 %54)
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %61 = call i32 @decNumberPlus(%struct.TYPE_19__* %9, %struct.TYPE_19__* %60, %struct.TYPE_20__* %10)
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %5, align 8
  br label %66

66:                                               ; preds = %53, %49
  br label %67

67:                                               ; preds = %66, %3
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = call i32 @DEC_clear(%struct.TYPE_18__* %68)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @DECSPECIAL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %127

76:                                               ; preds = %67
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DECINF, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i8*, i8** @DECIMAL_Inf, align 8
  store i8* %84, i8** %15, align 8
  br label %120

85:                                               ; preds = %76
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 3
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %85
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %108

96:                                               ; preds = %91, %85
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @DECIMAL128_Pmax, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @decDensePackCoeff(%struct.TYPE_19__* %103, i32* %106, i32 8, i64 0)
  br label %108

108:                                              ; preds = %102, %96, %91
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @DECNAN, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i8*, i8** @DECIMAL_NaN, align 8
  store i8* %116, i8** %15, align 8
  br label %119

117:                                              ; preds = %108
  %118 = load i8*, i8** @DECIMAL_sNaN, align 8
  store i8* %118, i8** %15, align 8
  br label %119

119:                                              ; preds = %117, %115
  br label %120

120:                                              ; preds = %119, %83
  %121 = load i8*, i8** %15, align 8
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %122, i32* %126, align 4
  br label %262

127:                                              ; preds = %67
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %129 = call i64 @decNumberIsZero(%struct.TYPE_19__* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %176

131:                                              ; preds = %127
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @DECIMAL128_Bias, align 8
  %136 = sub nsw i64 0, %135
  %137 = icmp slt i64 %134, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  store i32 0, i32* %13, align 4
  %139 = load i32, i32* @DEC_Clamped, align 4
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  br label %158

142:                                              ; preds = %131
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @DECIMAL128_Bias, align 8
  %147 = add nsw i64 %145, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @DECIMAL128_Ehigh, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %142
  %153 = load i32, i32* @DECIMAL128_Ehigh, align 4
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* @DEC_Clamped, align 4
  %155 = load i32, i32* %7, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %152, %142
  br label %158

158:                                              ; preds = %157, %138
  %159 = load i32, i32* %13, align 4
  %160 = ashr i32 %159, 9
  %161 = and i32 %160, 24
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = shl i32 %162, 2
  %164 = sext i32 %163 to i64
  %165 = inttoptr i64 %164 to i8*
  %166 = ptrtoint i8* %165 to i32
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  store i32 %166, i32* %170, align 4
  %171 = load i32, i32* %13, align 4
  %172 = and i32 %171, 4095
  store i32 %172, i32* %13, align 4
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @decimal128SetExpCon(%struct.TYPE_18__* %173, i32 %174)
  br label %261

176:                                              ; preds = %127
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @DECIMAL128_Bias, align 8
  %181 = add nsw i64 %179, %180
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* @DECIMAL128_Ehigh, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %176
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* @DECIMAL128_Ehigh, align 4
  %189 = sub nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  store i64 %190, i64* %8, align 8
  %191 = load i32, i32* @DECIMAL128_Ehigh, align 4
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* @DEC_Clamped, align 4
  %193 = load i32, i32* %7, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %186, %176
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* %8, align 8
  %201 = call i32 @decDensePackCoeff(%struct.TYPE_19__* %196, i32* %199, i32 8, i64 %200)
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 %206, 2
  %208 = and i32 %207, 12
  store i32 %208, i32* %16, align 4
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 2
  %213 = load i32, i32* %212, align 4
  %214 = lshr i32 %213, 6
  %215 = load i32, i32* %16, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %16, align 4
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, 252
  store i32 %222, i32* %220, align 4
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, 63
  store i32 %228, i32* %226, align 4
  %229 = load i32, i32* %16, align 4
  %230 = icmp sge i32 %229, 8
  br i1 %230, label %231, label %239

231:                                              ; preds = %195
  %232 = load i32, i32* %16, align 4
  %233 = and i32 %232, 1
  %234 = or i32 24, %233
  %235 = load i32, i32* %13, align 4
  %236 = ashr i32 %235, 11
  %237 = and i32 %236, 6
  %238 = or i32 %234, %237
  store i32 %238, i32* %12, align 4
  br label %246

239:                                              ; preds = %195
  %240 = load i32, i32* %16, align 4
  %241 = and i32 %240, 7
  %242 = load i32, i32* %13, align 4
  %243 = ashr i32 %242, 9
  %244 = and i32 %243, 24
  %245 = or i32 %241, %244
  store i32 %245, i32* %12, align 4
  br label %246

246:                                              ; preds = %239, %231
  %247 = load i32, i32* %12, align 4
  %248 = shl i32 %247, 2
  %249 = sext i32 %248 to i64
  %250 = inttoptr i64 %249 to i8*
  %251 = ptrtoint i8* %250 to i32
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  store i32 %251, i32* %255, align 4
  %256 = load i32, i32* %13, align 4
  %257 = and i32 %256, 4095
  store i32 %257, i32* %13, align 4
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %259 = load i32, i32* %13, align 4
  %260 = call i32 @decimal128SetExpCon(%struct.TYPE_18__* %258, i32 %259)
  br label %261

261:                                              ; preds = %246, %158
  br label %262

262:                                              ; preds = %261, %120
  %263 = load i8*, i8** %11, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %267 = call i32 @decimal128SetSign(%struct.TYPE_18__* %266, i32 1)
  br label %268

268:                                              ; preds = %265, %262
  %269 = load i32, i32* %7, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %273 = load i32, i32* %7, align 4
  %274 = call i32 @decContextSetStatus(%struct.TYPE_20__* %272, i32 %273)
  br label %275

275:                                              ; preds = %271, %268
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  ret %struct.TYPE_18__* %276
}

declare dso_local i32 @decContextDefault(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @decNumberPlus(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @DEC_clear(%struct.TYPE_18__*) #1

declare dso_local i32 @decDensePackCoeff(%struct.TYPE_19__*, i32*, i32, i64) #1

declare dso_local i64 @decNumberIsZero(%struct.TYPE_19__*) #1

declare dso_local i32 @decimal128SetExpCon(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @decimal128SetSign(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @decContextSetStatus(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
