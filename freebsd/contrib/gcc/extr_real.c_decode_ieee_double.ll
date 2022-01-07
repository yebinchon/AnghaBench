; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_decode_ieee_double.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_decode_ieee_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i64*, i64, i8* }

@FLOAT_WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@rvc_normal = common dso_local global i8* null, align 8
@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@SIGSZ = common dso_local global i32 0, align 4
@rvc_nan = common dso_local global i8* null, align 8
@rvc_inf = common dso_local global i8* null, align 8
@SIG_MSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.real_format*, %struct.TYPE_6__*, i64*)* @decode_ieee_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_ieee_double(%struct.real_format* %0, %struct.TYPE_6__* %1, i64* %2) #0 {
  %4 = alloca %struct.real_format*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.real_format* %0, %struct.real_format** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i64, i64* @FLOAT_WORDS_BIG_ENDIAN, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i64*, i64** %6, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  br label %27

20:                                               ; preds = %3
  %21 = load i64*, i64** %6, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %20, %13
  %28 = load i64, i64* %8, align 8
  %29 = and i64 %28, 4294967295
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = and i64 %30, 4294967295
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = lshr i64 %32, 31
  %34 = and i64 %33, 1
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i64, i64* %7, align 8
  %37 = lshr i64 %36, 20
  %38 = and i64 %37, 2047
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = call i32 @memset(%struct.TYPE_6__* %40, i32 0, i32 32)
  %42 = load i64, i64* %7, align 8
  %43 = shl i64 %42, 11
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = lshr i64 %44, 21
  %46 = load i64, i64* %7, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = and i64 %48, 2147483647
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = shl i64 %50, 11
  store i64 %51, i64* %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %129

54:                                               ; preds = %27
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %118

60:                                               ; preds = %57, %54
  %61 = load %struct.real_format*, %struct.real_format** %4, align 8
  %62 = getelementptr inbounds %struct.real_format, %struct.real_format* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %118

65:                                               ; preds = %60
  %66 = load i8*, i8** @rvc_normal, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = call i32 @SET_REAL_EXP(%struct.TYPE_6__* %72, i32 -1022)
  %74 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %76, label %100

76:                                               ; preds = %65
  %77 = load i64, i64* %7, align 8
  %78 = shl i64 %77, 1
  %79 = load i64, i64* %8, align 8
  %80 = lshr i64 %79, 31
  %81 = or i64 %78, %80
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = shl i64 %82, 1
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* @SIGSZ, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  store i64 %84, i64* %91, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* @SIGSZ, align 4
  %97 = sub nsw i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  store i64 %92, i64* %99, align 8
  br label %115

100:                                              ; preds = %65
  %101 = load i64, i64* %7, align 8
  %102 = shl i64 %101, 31
  %103 = shl i64 %102, 2
  %104 = load i64, i64* %8, align 8
  %105 = shl i64 %104, 1
  %106 = or i64 %103, %105
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* @SIGSZ, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  store i64 %107, i64* %114, align 8
  br label %115

115:                                              ; preds = %100, %76
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = call i32 @normalize(%struct.TYPE_6__* %116)
  br label %128

118:                                              ; preds = %60, %57
  %119 = load %struct.real_format*, %struct.real_format** %4, align 8
  %120 = getelementptr inbounds %struct.real_format, %struct.real_format* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %123, %118
  br label %128

128:                                              ; preds = %127, %115
  br label %255

129:                                              ; preds = %27
  %130 = load i32, i32* %10, align 4
  %131 = icmp eq i32 %130, 2047
  br i1 %131, label %132, label %205

132:                                              ; preds = %129
  %133 = load %struct.real_format*, %struct.real_format** %4, align 8
  %134 = getelementptr inbounds %struct.real_format, %struct.real_format* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load %struct.real_format*, %struct.real_format** %4, align 8
  %139 = getelementptr inbounds %struct.real_format, %struct.real_format* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %205

142:                                              ; preds = %137, %132
  %143 = load i64, i64* %7, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i64, i64* %8, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %197

148:                                              ; preds = %145, %142
  %149 = load i8*, i8** @rvc_nan, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load i64, i64* %7, align 8
  %156 = lshr i64 %155, 30
  %157 = and i64 %156, 1
  %158 = load %struct.real_format*, %struct.real_format** %4, align 8
  %159 = getelementptr inbounds %struct.real_format, %struct.real_format* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = xor i64 %157, %160
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  %164 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %165 = icmp eq i32 %164, 32
  br i1 %165, label %166, label %183

166:                                              ; preds = %148
  %167 = load i64, i64* %7, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* @SIGSZ, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %170, i64 %173
  store i64 %167, i64* %174, align 8
  %175 = load i64, i64* %8, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* @SIGSZ, align 4
  %180 = sub nsw i32 %179, 2
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %178, i64 %181
  store i64 %175, i64* %182, align 8
  br label %196

183:                                              ; preds = %148
  %184 = load i64, i64* %7, align 8
  %185 = shl i64 %184, 31
  %186 = shl i64 %185, 1
  %187 = load i64, i64* %8, align 8
  %188 = or i64 %186, %187
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i64*, i64** %190, align 8
  %192 = load i32, i32* @SIGSZ, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %191, i64 %194
  store i64 %188, i64* %195, align 8
  br label %196

196:                                              ; preds = %183, %166
  br label %204

197:                                              ; preds = %145
  %198 = load i8*, i8** @rvc_inf, align 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 3
  store i8* %198, i8** %200, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %197, %196
  br label %254

205:                                              ; preds = %137, %129
  %206 = load i8*, i8** @rvc_normal, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 3
  store i8* %206, i8** %208, align 8
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %213 = load i32, i32* %10, align 4
  %214 = sub nsw i32 %213, 1023
  %215 = add nsw i32 %214, 1
  %216 = call i32 @SET_REAL_EXP(%struct.TYPE_6__* %212, i32 %215)
  %217 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %218 = icmp eq i32 %217, 32
  br i1 %218, label %219, label %238

219:                                              ; preds = %205
  %220 = load i64, i64* %7, align 8
  %221 = load i64, i64* @SIG_MSB, align 8
  %222 = or i64 %220, %221
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  %225 = load i64*, i64** %224, align 8
  %226 = load i32, i32* @SIGSZ, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %225, i64 %228
  store i64 %222, i64* %229, align 8
  %230 = load i64, i64* %8, align 8
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 1
  %233 = load i64*, i64** %232, align 8
  %234 = load i32, i32* @SIGSZ, align 4
  %235 = sub nsw i32 %234, 2
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %233, i64 %236
  store i64 %230, i64* %237, align 8
  br label %253

238:                                              ; preds = %205
  %239 = load i64, i64* %7, align 8
  %240 = shl i64 %239, 31
  %241 = shl i64 %240, 1
  %242 = load i64, i64* %8, align 8
  %243 = or i64 %241, %242
  %244 = load i64, i64* @SIG_MSB, align 8
  %245 = or i64 %243, %244
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = load i64*, i64** %247, align 8
  %249 = load i32, i32* @SIGSZ, align 4
  %250 = sub nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %248, i64 %251
  store i64 %245, i64* %252, align 8
  br label %253

253:                                              ; preds = %238, %219
  br label %254

254:                                              ; preds = %253, %204
  br label %255

255:                                              ; preds = %254, %128
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @SET_REAL_EXP(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @normalize(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
