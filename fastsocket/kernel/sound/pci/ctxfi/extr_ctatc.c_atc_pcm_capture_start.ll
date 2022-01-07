; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_capture_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_capture_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { %struct.src_mgr** }
%struct.src_mgr = type { i32 (%struct.src_mgr*)*, i32 (%struct.src_mgr*, %struct.src*)*, i32 (%struct.src_mgr*, %struct.src.0*)* }
%struct.src = type opaque
%struct.src.0 = type opaque
%struct.ct_atc_pcm = type { i32, i32, i32, %struct.src.1*, %struct.src.1**, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.src.1 = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.src.1*)*, i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i64)*, i32 (%struct.src.1*, i64)*, i32 (%struct.src.1*, i64)*, i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@SRC = common dso_local global i64 0, align 8
@SRC_STATE_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* @atc_pcm_capture_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_pcm_capture_start(%struct.ct_atc* %0, %struct.ct_atc_pcm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.ct_atc_pcm*, align 8
  %6 = alloca %struct.src.1*, align 8
  %7 = alloca %struct.src_mgr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %5, align 8
  %10 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %11 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %10, i32 0, i32 0
  %12 = load %struct.src_mgr**, %struct.src_mgr*** %11, align 8
  %13 = load i64, i64* @SRC, align 8
  %14 = getelementptr inbounds %struct.src_mgr*, %struct.src_mgr** %12, i64 %13
  %15 = load %struct.src_mgr*, %struct.src_mgr** %14, align 8
  store %struct.src_mgr* %15, %struct.src_mgr** %7, align 8
  %16 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %17 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %223

21:                                               ; preds = %2
  %22 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %23 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %25 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %24, i32 0, i32 6
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %66, %21
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %34 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %31
  %38 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %39 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %38, i32 0, i32 4
  %40 = load %struct.src.1**, %struct.src.1*** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.src.1*, %struct.src.1** %40, i64 %42
  %44 = load %struct.src.1*, %struct.src.1** %43, align 8
  store %struct.src.1* %44, %struct.src.1** %6, align 8
  %45 = load %struct.src.1*, %struct.src.1** %6, align 8
  %46 = getelementptr inbounds %struct.src.1, %struct.src.1* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 7
  %49 = load i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)** %48, align 8
  %50 = load %struct.src.1*, %struct.src.1** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = srem i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp ne i32 %53, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 %49(%struct.src.1* %50, i32 %57)
  %59 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %60 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %59, i32 0, i32 2
  %61 = load i32 (%struct.src_mgr*, %struct.src.0*)*, i32 (%struct.src_mgr*, %struct.src.0*)** %60, align 8
  %62 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %63 = load %struct.src.1*, %struct.src.1** %6, align 8
  %64 = bitcast %struct.src.1* %63 to %struct.src.0*
  %65 = call i32 %61(%struct.src_mgr* %62, %struct.src.0* %64)
  br label %66

66:                                               ; preds = %37
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %31

69:                                               ; preds = %31
  %70 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %71 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %70, i32 0, i32 3
  %72 = load %struct.src.1*, %struct.src.1** %71, align 8
  store %struct.src.1* %72, %struct.src.1** %6, align 8
  %73 = load %struct.src.1*, %struct.src.1** %6, align 8
  %74 = getelementptr inbounds %struct.src.1, %struct.src.1* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 6
  %77 = load i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)** %76, align 8
  %78 = load %struct.src.1*, %struct.src.1** %6, align 8
  %79 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %80 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %79, i32 0, i32 6
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @convert_format(i32 %85)
  %87 = call i32 %77(%struct.src.1* %78, i32 %86)
  %88 = load %struct.src.1*, %struct.src.1** %6, align 8
  %89 = getelementptr inbounds %struct.src.1, %struct.src.1* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 5
  %92 = load i32 (%struct.src.1*, i64)*, i32 (%struct.src.1*, i64)** %91, align 8
  %93 = load %struct.src.1*, %struct.src.1** %6, align 8
  %94 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %95 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %94, i32 0, i32 5
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 %92(%struct.src.1* %93, i64 %98)
  %100 = load %struct.src.1*, %struct.src.1** %6, align 8
  %101 = getelementptr inbounds %struct.src.1, %struct.src.1* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  %104 = load i32 (%struct.src.1*, i64)*, i32 (%struct.src.1*, i64)** %103, align 8
  %105 = load %struct.src.1*, %struct.src.1** %6, align 8
  %106 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %107 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %106, i32 0, i32 5
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %112 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %111, i32 0, i32 5
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %110, %115
  %117 = call i32 %104(%struct.src.1* %105, i64 %116)
  %118 = load %struct.src.1*, %struct.src.1** %6, align 8
  %119 = getelementptr inbounds %struct.src.1, %struct.src.1* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  %122 = load i32 (%struct.src.1*, i64)*, i32 (%struct.src.1*, i64)** %121, align 8
  %123 = load %struct.src.1*, %struct.src.1** %6, align 8
  %124 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %125 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %124, i32 0, i32 5
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 %122(%struct.src.1* %123, i64 %128)
  %130 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %131 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %130, i32 0, i32 2
  %132 = load i32 (%struct.src_mgr*, %struct.src.0*)*, i32 (%struct.src_mgr*, %struct.src.0*)** %131, align 8
  %133 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %134 = load %struct.src.1*, %struct.src.1** %6, align 8
  %135 = bitcast %struct.src.1* %134 to %struct.src.0*
  %136 = call i32 %132(%struct.src_mgr* %133, %struct.src.0* %135)
  %137 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %138 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %137, i32 0, i32 0
  %139 = load i32 (%struct.src_mgr*)*, i32 (%struct.src_mgr*)** %138, align 8
  %140 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %141 = call i32 %139(%struct.src_mgr* %140)
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %178, %69
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %145 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %181

148:                                              ; preds = %142
  %149 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %150 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %149, i32 0, i32 4
  %151 = load %struct.src.1**, %struct.src.1*** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.src.1*, %struct.src.1** %151, i64 %153
  %155 = load %struct.src.1*, %struct.src.1** %154, align 8
  store %struct.src.1* %155, %struct.src.1** %6, align 8
  %156 = load %struct.src.1*, %struct.src.1** %6, align 8
  %157 = getelementptr inbounds %struct.src.1, %struct.src.1* %156, i32 0, i32 0
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)** %159, align 8
  %161 = load %struct.src.1*, %struct.src.1** %6, align 8
  %162 = load i32, i32* @SRC_STATE_RUN, align 4
  %163 = call i32 %160(%struct.src.1* %161, i32 %162)
  %164 = load %struct.src.1*, %struct.src.1** %6, align 8
  %165 = getelementptr inbounds %struct.src.1, %struct.src.1* %164, i32 0, i32 0
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32 (%struct.src.1*)*, i32 (%struct.src.1*)** %167, align 8
  %169 = load %struct.src.1*, %struct.src.1** %6, align 8
  %170 = call i32 %168(%struct.src.1* %169)
  %171 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %172 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %171, i32 0, i32 1
  %173 = load i32 (%struct.src_mgr*, %struct.src*)*, i32 (%struct.src_mgr*, %struct.src*)** %172, align 8
  %174 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %175 = load %struct.src.1*, %struct.src.1** %6, align 8
  %176 = bitcast %struct.src.1* %175 to %struct.src*
  %177 = call i32 %173(%struct.src_mgr* %174, %struct.src* %176)
  br label %178

178:                                              ; preds = %148
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %142

181:                                              ; preds = %142
  %182 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %183 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %182, i32 0, i32 3
  %184 = load %struct.src.1*, %struct.src.1** %183, align 8
  store %struct.src.1* %184, %struct.src.1** %6, align 8
  %185 = load %struct.src.1*, %struct.src.1** %6, align 8
  %186 = getelementptr inbounds %struct.src.1, %struct.src.1* %185, i32 0, i32 0
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  %189 = load i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)** %188, align 8
  %190 = load %struct.src.1*, %struct.src.1** %6, align 8
  %191 = call i32 %189(%struct.src.1* %190, i32 1)
  %192 = load %struct.src.1*, %struct.src.1** %6, align 8
  %193 = getelementptr inbounds %struct.src.1, %struct.src.1* %192, i32 0, i32 0
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = load i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)** %195, align 8
  %197 = load %struct.src.1*, %struct.src.1** %6, align 8
  %198 = load i32, i32* @SRC_STATE_RUN, align 4
  %199 = call i32 %196(%struct.src.1* %197, i32 %198)
  %200 = load %struct.src.1*, %struct.src.1** %6, align 8
  %201 = getelementptr inbounds %struct.src.1, %struct.src.1* %200, i32 0, i32 0
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i32 (%struct.src.1*)*, i32 (%struct.src.1*)** %203, align 8
  %205 = load %struct.src.1*, %struct.src.1** %6, align 8
  %206 = call i32 %204(%struct.src.1* %205)
  %207 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %208 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %207, i32 0, i32 1
  %209 = load i32 (%struct.src_mgr*, %struct.src*)*, i32 (%struct.src_mgr*, %struct.src*)** %208, align 8
  %210 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %211 = load %struct.src.1*, %struct.src.1** %6, align 8
  %212 = bitcast %struct.src.1* %211 to %struct.src*
  %213 = call i32 %209(%struct.src_mgr* %210, %struct.src* %212)
  %214 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %215 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %214, i32 0, i32 0
  %216 = load i32 (%struct.src_mgr*)*, i32 (%struct.src_mgr*)** %215, align 8
  %217 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %218 = call i32 %216(%struct.src_mgr* %217)
  %219 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %220 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @ct_timer_start(i32 %221)
  store i32 0, i32* %3, align 4
  br label %223

223:                                              ; preds = %181, %20
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @convert_format(i32) #1

declare dso_local i32 @ct_timer_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
