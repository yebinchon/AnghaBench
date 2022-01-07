; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetRAMDAC2DATA.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetRAMDAC2DATA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i16, i16, i16, i16, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i16* }
%struct.TYPE_7__ = type { i16 }
%struct.TYPE_6__ = type { i16* }
%struct.TYPE_5__ = type { i16 }

@Charx8Dot = common dso_local global i16 0, align 2
@HalfDCLK = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_GetRAMDAC2DATA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_GetRAMDAC2DATA(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  store i16 0, i16* %9, align 2
  store i16 0, i16* %10, align 2
  store i16 0, i16* %13, align 2
  store i16 0, i16* %14, align 2
  store i16 0, i16* %15, align 2
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp sle i32 %21, 19
  br i1 %22, label %23, label %75

23:                                               ; preds = %4
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %25 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %24, i32 0, i32 10
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i16, i16* %7, align 2
  %28 = zext i16 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i16, i16* %30, align 2
  store i16 %31, i16* %14, align 2
  %32 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %33 = load i16, i16* %6, align 2
  %34 = load i16, i16* %7, align 2
  %35 = call zeroext i16 @SiS_GetModePtr(%struct.SiS_Private* %32, i16 zeroext %33, i16 zeroext %34)
  store i16 %35, i16* %11, align 2
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %37 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %36, i32 0, i32 9
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i16, i16* %11, align 2
  %40 = zext i16 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i16*, i16** %42, align 8
  %44 = getelementptr inbounds i16, i16* %43, i64 0
  %45 = load i16, i16* %44, align 2
  store i16 %45, i16* %9, align 2
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %47 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %46, i32 0, i32 9
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i16, i16* %11, align 2
  %50 = zext i16 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i16*, i16** %52, align 8
  %54 = getelementptr inbounds i16, i16* %53, i64 6
  %55 = load i16, i16* %54, align 2
  store i16 %55, i16* %10, align 2
  %56 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %57 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %56, i32 0, i32 9
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i16, i16* %11, align 2
  %60 = zext i16 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i16*, i16** %62, align 8
  %64 = getelementptr inbounds i16, i16* %63, i64 7
  %65 = load i16, i16* %64, align 2
  store i16 %65, i16* %13, align 2
  %66 = load i16, i16* %14, align 2
  %67 = zext i16 %66 to i32
  %68 = load i16, i16* @Charx8Dot, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 8, i32 9
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %12, align 2
  br label %167

75:                                               ; preds = %4
  %76 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %77 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %76, i32 0, i32 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i16, i16* %7, align 2
  %80 = zext i16 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i16, i16* %82, align 2
  store i16 %83, i16* %14, align 2
  %84 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %85 = load i16, i16* %8, align 2
  %86 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %87 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = call zeroext i16 @SiS_GetRefCRT1CRTC(%struct.SiS_Private* %84, i16 zeroext %85, i32 %88)
  store i16 %89, i16* %11, align 2
  %90 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %91 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %90, i32 0, i32 6
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i16, i16* %11, align 2
  %94 = zext i16 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i16*, i16** %96, align 8
  %98 = getelementptr inbounds i16, i16* %97, i64 0
  %99 = load i16, i16* %98, align 2
  store i16 %99, i16* %9, align 2
  %100 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %101 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %100, i32 0, i32 6
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load i16, i16* %11, align 2
  %104 = zext i16 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i16*, i16** %106, align 8
  %108 = getelementptr inbounds i16, i16* %107, i64 14
  %109 = load i16, i16* %108, align 2
  %110 = zext i16 %109 to i32
  %111 = shl i32 %110, 8
  %112 = load i16, i16* %9, align 2
  %113 = zext i16 %112 to i32
  %114 = or i32 %113, %111
  %115 = trunc i32 %114 to i16
  store i16 %115, i16* %9, align 2
  %116 = load i16, i16* %9, align 2
  %117 = zext i16 %116 to i32
  %118 = and i32 %117, 1023
  %119 = trunc i32 %118 to i16
  store i16 %119, i16* %9, align 2
  %120 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %121 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %120, i32 0, i32 6
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = load i16, i16* %11, align 2
  %124 = zext i16 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i16*, i16** %126, align 8
  %128 = getelementptr inbounds i16, i16* %127, i64 6
  %129 = load i16, i16* %128, align 2
  store i16 %129, i16* %10, align 2
  %130 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %131 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %130, i32 0, i32 6
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = load i16, i16* %11, align 2
  %134 = zext i16 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i16*, i16** %136, align 8
  %138 = getelementptr inbounds i16, i16* %137, i64 13
  %139 = load i16, i16* %138, align 2
  %140 = zext i16 %139 to i32
  %141 = shl i32 %140, 8
  %142 = trunc i32 %141 to i16
  store i16 %142, i16* %15, align 2
  %143 = load i16, i16* %15, align 2
  %144 = zext i16 %143 to i32
  %145 = and i32 %144, 256
  %146 = trunc i32 %145 to i16
  store i16 %146, i16* %15, align 2
  %147 = load i16, i16* %15, align 2
  %148 = zext i16 %147 to i32
  %149 = shl i32 %148, 2
  %150 = trunc i32 %149 to i16
  store i16 %150, i16* %15, align 2
  %151 = load i16, i16* %15, align 2
  %152 = zext i16 %151 to i32
  %153 = load i16, i16* %10, align 2
  %154 = zext i16 %153 to i32
  %155 = or i32 %154, %152
  %156 = trunc i32 %155 to i16
  store i16 %156, i16* %10, align 2
  %157 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %158 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %157, i32 0, i32 6
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = load i16, i16* %11, align 2
  %161 = zext i16 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i16*, i16** %163, align 8
  %165 = getelementptr inbounds i16, i16* %164, i64 7
  %166 = load i16, i16* %165, align 2
  store i16 %166, i16* %13, align 2
  store i16 8, i16* %12, align 2
  br label %167

167:                                              ; preds = %75, %23
  %168 = load i16, i16* %13, align 2
  %169 = zext i16 %168 to i32
  %170 = and i32 %169, 1
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i16, i16* %10, align 2
  %174 = zext i16 %173 to i32
  %175 = or i32 %174, 256
  %176 = trunc i32 %175 to i16
  store i16 %176, i16* %10, align 2
  br label %177

177:                                              ; preds = %172, %167
  %178 = load i16, i16* %13, align 2
  %179 = zext i16 %178 to i32
  %180 = and i32 %179, 32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load i16, i16* %10, align 2
  %184 = zext i16 %183 to i32
  %185 = or i32 %184, 512
  %186 = trunc i32 %185 to i16
  store i16 %186, i16* %10, align 2
  br label %187

187:                                              ; preds = %182, %177
  %188 = load i16, i16* %9, align 2
  %189 = zext i16 %188 to i32
  %190 = add nsw i32 %189, 5
  %191 = trunc i32 %190 to i16
  store i16 %191, i16* %9, align 2
  %192 = load i16, i16* %12, align 2
  %193 = zext i16 %192 to i32
  %194 = load i16, i16* %9, align 2
  %195 = zext i16 %194 to i32
  %196 = mul nsw i32 %195, %193
  %197 = trunc i32 %196 to i16
  store i16 %197, i16* %9, align 2
  %198 = load i16, i16* %14, align 2
  %199 = zext i16 %198 to i32
  %200 = load i16, i16* @HalfDCLK, align 2
  %201 = zext i16 %200 to i32
  %202 = and i32 %199, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %187
  %205 = load i16, i16* %9, align 2
  %206 = zext i16 %205 to i32
  %207 = shl i32 %206, 1
  %208 = trunc i32 %207 to i16
  store i16 %208, i16* %9, align 2
  br label %209

209:                                              ; preds = %204, %187
  %210 = load i16, i16* %10, align 2
  %211 = add i16 %210, 1
  store i16 %211, i16* %10, align 2
  %212 = load i16, i16* %9, align 2
  %213 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %214 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %213, i32 0, i32 3
  store i16 %212, i16* %214, align 2
  %215 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %216 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %215, i32 0, i32 2
  store i16 %212, i16* %216, align 8
  %217 = load i16, i16* %10, align 2
  %218 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %219 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %218, i32 0, i32 5
  store i16 %217, i16* %219, align 2
  %220 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %221 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %220, i32 0, i32 4
  store i16 %217, i16* %221, align 4
  ret void
}

declare dso_local zeroext i16 @SiS_GetModePtr(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local zeroext i16 @SiS_GetRefCRT1CRTC(%struct.SiS_Private*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
