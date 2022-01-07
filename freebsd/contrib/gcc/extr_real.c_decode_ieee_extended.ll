; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_decode_ieee_extended.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_decode_ieee_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i32, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i64*, i64, i8* }

@rvc_normal = common dso_local global i8* null, align 8
@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@SIGSZ = common dso_local global i32 0, align 4
@rvc_nan = common dso_local global i8* null, align 8
@rvc_inf = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.real_format*, %struct.TYPE_6__*, i64*)* @decode_ieee_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_ieee_extended(%struct.real_format* %0, %struct.TYPE_6__* %1, i64* %2) #0 {
  %4 = alloca %struct.real_format*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.real_format* %0, %struct.real_format** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 2
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %9, align 8
  %22 = and i64 %21, 4294967295
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = and i64 %25, 4294967295
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = lshr i64 %27, 15
  %29 = and i64 %28, 1
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load i64, i64* %7, align 8
  %32 = and i64 %31, 32767
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = call i32 @memset(%struct.TYPE_6__* %34, i32 0, i32 32)
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %107

38:                                               ; preds = %3
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %96

44:                                               ; preds = %41, %38
  %45 = load %struct.real_format*, %struct.real_format** %4, align 8
  %46 = getelementptr inbounds %struct.real_format, %struct.real_format* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %96

49:                                               ; preds = %44
  %50 = load i8*, i8** @rvc_normal, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = load %struct.real_format*, %struct.real_format** %4, align 8
  %58 = getelementptr inbounds %struct.real_format, %struct.real_format* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @SET_REAL_EXP(%struct.TYPE_6__* %56, i32 %59)
  %61 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %62 = icmp eq i32 %61, 32
  br i1 %62, label %63, label %80

63:                                               ; preds = %49
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* @SIGSZ, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  store i64 %64, i64* %71, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* @SIGSZ, align 4
  %77 = sub nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  store i64 %72, i64* %79, align 8
  br label %93

80:                                               ; preds = %49
  %81 = load i64, i64* %8, align 8
  %82 = shl i64 %81, 31
  %83 = shl i64 %82, 1
  %84 = load i64, i64* %9, align 8
  %85 = or i64 %83, %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* @SIGSZ, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  store i64 %85, i64* %92, align 8
  br label %93

93:                                               ; preds = %80, %63
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = call i32 @normalize(%struct.TYPE_6__* %94)
  br label %106

96:                                               ; preds = %44, %41
  %97 = load %struct.real_format*, %struct.real_format** %4, align 8
  %98 = getelementptr inbounds %struct.real_format, %struct.real_format* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %101, %96
  br label %106

106:                                              ; preds = %105, %93
  br label %231

107:                                              ; preds = %3
  %108 = load i32, i32* %11, align 4
  %109 = icmp eq i32 %108, 32767
  br i1 %109, label %110, label %185

110:                                              ; preds = %107
  %111 = load %struct.real_format*, %struct.real_format** %4, align 8
  %112 = getelementptr inbounds %struct.real_format, %struct.real_format* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load %struct.real_format*, %struct.real_format** %4, align 8
  %117 = getelementptr inbounds %struct.real_format, %struct.real_format* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %185

120:                                              ; preds = %115, %110
  %121 = load i64, i64* %8, align 8
  %122 = and i64 %121, 2147483647
  store i64 %122, i64* %8, align 8
  %123 = load i64, i64* %8, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = load i64, i64* %9, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %177

128:                                              ; preds = %125, %120
  %129 = load i8*, i8** @rvc_nan, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i64, i64* %8, align 8
  %136 = lshr i64 %135, 30
  %137 = and i64 %136, 1
  %138 = load %struct.real_format*, %struct.real_format** %4, align 8
  %139 = getelementptr inbounds %struct.real_format, %struct.real_format* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = xor i64 %137, %140
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %145 = icmp eq i32 %144, 32
  br i1 %145, label %146, label %163

146:                                              ; preds = %128
  %147 = load i64, i64* %8, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* @SIGSZ, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  store i64 %147, i64* %154, align 8
  %155 = load i64, i64* %9, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* @SIGSZ, align 4
  %160 = sub nsw i32 %159, 2
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %158, i64 %161
  store i64 %155, i64* %162, align 8
  br label %176

163:                                              ; preds = %128
  %164 = load i64, i64* %8, align 8
  %165 = shl i64 %164, 31
  %166 = shl i64 %165, 1
  %167 = load i64, i64* %9, align 8
  %168 = or i64 %166, %167
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* @SIGSZ, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %171, i64 %174
  store i64 %168, i64* %175, align 8
  br label %176

176:                                              ; preds = %163, %146
  br label %184

177:                                              ; preds = %125
  %178 = load i8*, i8** @rvc_inf, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 3
  store i8* %178, i8** %180, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %177, %176
  br label %230

185:                                              ; preds = %115, %107
  %186 = load i8*, i8** @rvc_normal, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 3
  store i8* %186, i8** %188, align 8
  %189 = load i32, i32* %10, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sub nsw i32 %193, 16383
  %195 = add nsw i32 %194, 1
  %196 = call i32 @SET_REAL_EXP(%struct.TYPE_6__* %192, i32 %195)
  %197 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %198 = icmp eq i32 %197, 32
  br i1 %198, label %199, label %216

199:                                              ; preds = %185
  %200 = load i64, i64* %8, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* @SIGSZ, align 4
  %205 = sub nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %203, i64 %206
  store i64 %200, i64* %207, align 8
  %208 = load i64, i64* %9, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load i64*, i64** %210, align 8
  %212 = load i32, i32* @SIGSZ, align 4
  %213 = sub nsw i32 %212, 2
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %211, i64 %214
  store i64 %208, i64* %215, align 8
  br label %229

216:                                              ; preds = %185
  %217 = load i64, i64* %8, align 8
  %218 = shl i64 %217, 31
  %219 = shl i64 %218, 1
  %220 = load i64, i64* %9, align 8
  %221 = or i64 %219, %220
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = load i64*, i64** %223, align 8
  %225 = load i32, i32* @SIGSZ, align 4
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %224, i64 %227
  store i64 %221, i64* %228, align 8
  br label %229

229:                                              ; preds = %216, %199
  br label %230

230:                                              ; preds = %229, %184
  br label %231

231:                                              ; preds = %230, %106
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
