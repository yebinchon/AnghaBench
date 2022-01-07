; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_encode_ieee_quad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_encode_ieee_quad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32, i32, i32, i32 }

@SIGSZ = common dso_local global i32 0, align 4
@SIG_MSB = common dso_local global i32 0, align 4
@SIGNIFICAND_BITS = common dso_local global i64 0, align 8
@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@FLOAT_WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.real_format*, i64*, %struct.TYPE_6__*)* @encode_ieee_quad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_ieee_quad(%struct.real_format* %0, i64* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.real_format*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__, align 8
  store %struct.real_format* %0, %struct.real_format** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @SIGSZ, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SIG_MSB, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 31
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = load i64, i64* @SIGNIFICAND_BITS, align 8
  %33 = sub nsw i64 %32, 113
  %34 = call i32 @rshift_significand(%struct.TYPE_6__* %13, %struct.TYPE_6__* %31, i64 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %228 [
    i32 128, label %38
    i32 131, label %39
    i32 130, label %51
    i32 129, label %162
  ]

38:                                               ; preds = %3
  br label %230

39:                                               ; preds = %3
  %40 = load %struct.real_format*, %struct.real_format** %4, align 8
  %41 = getelementptr inbounds %struct.real_format, %struct.real_format* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, i64* %7, align 8
  %46 = or i64 %45, 2147418112
  store i64 %46, i64* %7, align 8
  br label %50

47:                                               ; preds = %39
  %48 = load i64, i64* %7, align 8
  %49 = or i64 %48, 2147483647
  store i64 %49, i64* %7, align 8
  store i64 4294967295, i64* %8, align 8
  store i64 4294967295, i64* %9, align 8
  store i64 4294967295, i64* %10, align 8
  br label %50

50:                                               ; preds = %47, %44
  br label %230

51:                                               ; preds = %3
  %52 = load %struct.real_format*, %struct.real_format** %4, align 8
  %53 = getelementptr inbounds %struct.real_format, %struct.real_format* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %158

56:                                               ; preds = %51
  %57 = load i64, i64* %7, align 8
  %58 = or i64 %57, 2147418112
  store i64 %58, i64* %7, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %116

64:                                               ; preds = %56
  %65 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %66 = icmp eq i32 %65, 32
  br i1 %66, label %67, label %91

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 65535
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %7, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %7, align 8
  br label %115

91:                                               ; preds = %64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = lshr i64 %97, 31
  %99 = lshr i64 %98, 1
  store i64 %99, i64* %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %8, align 8
  %106 = lshr i64 %105, 31
  %107 = lshr i64 %106, 1
  %108 = and i64 %107, 65535
  %109 = load i64, i64* %7, align 8
  %110 = or i64 %109, %108
  store i64 %110, i64* %7, align 8
  %111 = load i64, i64* %10, align 8
  %112 = and i64 %111, 4294967295
  store i64 %112, i64* %10, align 8
  %113 = load i64, i64* %8, align 8
  %114 = and i64 %113, 4294967295
  store i64 %114, i64* %8, align 8
  br label %115

115:                                              ; preds = %91, %67
  br label %116

116:                                              ; preds = %115, %63
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.real_format*, %struct.real_format** %4, align 8
  %121 = getelementptr inbounds %struct.real_format, %struct.real_format* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load i64, i64* %7, align 8
  %126 = and i64 %125, -32769
  store i64 %126, i64* %7, align 8
  br label %130

127:                                              ; preds = %116
  %128 = load i64, i64* %7, align 8
  %129 = or i64 %128, 32768
  store i64 %129, i64* %7, align 8
  br label %130

130:                                              ; preds = %127, %124
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load %struct.real_format*, %struct.real_format** %4, align 8
  %137 = getelementptr inbounds %struct.real_format, %struct.real_format* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = load i64, i64* %7, align 8
  %142 = or i64 %141, 32767
  store i64 %142, i64* %7, align 8
  store i64 4294967295, i64* %10, align 8
  store i64 4294967295, i64* %9, align 8
  store i64 4294967295, i64* %8, align 8
  br label %157

143:                                              ; preds = %135, %130
  %144 = load i64, i64* %7, align 8
  %145 = and i64 %144, 65535
  %146 = load i64, i64* %8, align 8
  %147 = or i64 %145, %146
  %148 = load i64, i64* %9, align 8
  %149 = or i64 %147, %148
  %150 = load i64, i64* %10, align 8
  %151 = or i64 %149, %150
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %143
  %154 = load i64, i64* %7, align 8
  %155 = or i64 %154, 16384
  store i64 %155, i64* %7, align 8
  br label %156

156:                                              ; preds = %153, %143
  br label %157

157:                                              ; preds = %156, %140
  br label %161

158:                                              ; preds = %51
  %159 = load i64, i64* %7, align 8
  %160 = or i64 %159, 2147483647
  store i64 %160, i64* %7, align 8
  store i64 4294967295, i64* %8, align 8
  store i64 4294967295, i64* %9, align 8
  store i64 4294967295, i64* %10, align 8
  br label %161

161:                                              ; preds = %158, %157
  br label %230

162:                                              ; preds = %3
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i64 0, i64* %11, align 8
  br label %172

166:                                              ; preds = %162
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %168 = call i32 @REAL_EXP(%struct.TYPE_6__* %167)
  %169 = add nsw i32 %168, 16383
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %11, align 8
  br label %172

172:                                              ; preds = %166, %165
  %173 = load i64, i64* %11, align 8
  %174 = shl i64 %173, 16
  %175 = load i64, i64* %7, align 8
  %176 = or i64 %175, %174
  store i64 %176, i64* %7, align 8
  %177 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %178 = icmp eq i32 %177, 32
  br i1 %178, label %179, label %203

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 3
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 65535
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %7, align 8
  %202 = or i64 %201, %200
  store i64 %202, i64* %7, align 8
  br label %227

203:                                              ; preds = %172
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  store i64 %208, i64* %10, align 8
  %209 = load i64, i64* %10, align 8
  %210 = lshr i64 %209, 31
  %211 = lshr i64 %210, 1
  store i64 %211, i64* %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  store i64 %216, i64* %8, align 8
  %217 = load i64, i64* %8, align 8
  %218 = lshr i64 %217, 31
  %219 = lshr i64 %218, 1
  %220 = and i64 %219, 65535
  %221 = load i64, i64* %7, align 8
  %222 = or i64 %221, %220
  store i64 %222, i64* %7, align 8
  %223 = load i64, i64* %10, align 8
  %224 = and i64 %223, 4294967295
  store i64 %224, i64* %10, align 8
  %225 = load i64, i64* %8, align 8
  %226 = and i64 %225, 4294967295
  store i64 %226, i64* %8, align 8
  br label %227

227:                                              ; preds = %203, %179
  br label %230

228:                                              ; preds = %3
  %229 = call i32 (...) @gcc_unreachable()
  br label %230

230:                                              ; preds = %228, %227, %161, %50, %38
  %231 = load i64, i64* @FLOAT_WORDS_BIG_ENDIAN, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %246

233:                                              ; preds = %230
  %234 = load i64, i64* %7, align 8
  %235 = load i64*, i64** %5, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 0
  store i64 %234, i64* %236, align 8
  %237 = load i64, i64* %8, align 8
  %238 = load i64*, i64** %5, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 1
  store i64 %237, i64* %239, align 8
  %240 = load i64, i64* %9, align 8
  %241 = load i64*, i64** %5, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 2
  store i64 %240, i64* %242, align 8
  %243 = load i64, i64* %10, align 8
  %244 = load i64*, i64** %5, align 8
  %245 = getelementptr inbounds i64, i64* %244, i64 3
  store i64 %243, i64* %245, align 8
  br label %259

246:                                              ; preds = %230
  %247 = load i64, i64* %10, align 8
  %248 = load i64*, i64** %5, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 0
  store i64 %247, i64* %249, align 8
  %250 = load i64, i64* %9, align 8
  %251 = load i64*, i64** %5, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 1
  store i64 %250, i64* %252, align 8
  %253 = load i64, i64* %8, align 8
  %254 = load i64*, i64** %5, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 2
  store i64 %253, i64* %255, align 8
  %256 = load i64, i64* %7, align 8
  %257 = load i64*, i64** %5, align 8
  %258 = getelementptr inbounds i64, i64* %257, i64 3
  store i64 %256, i64* %258, align 8
  br label %259

259:                                              ; preds = %246, %233
  ret void
}

declare dso_local i32 @rshift_significand(%struct.TYPE_6__*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @REAL_EXP(%struct.TYPE_6__*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
