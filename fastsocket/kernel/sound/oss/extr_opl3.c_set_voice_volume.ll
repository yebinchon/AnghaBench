; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_opl3.c_set_voice_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_opl3.c_set_voice_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64*, %struct.TYPE_3__*, %struct.sbi_instrument*, %struct.sbi_instrument** }
%struct.TYPE_3__ = type { i32 }
%struct.sbi_instrument = type { i64, i8* }
%struct.physical_voice_info = type { i64*, i32 }

@devc = common dso_local global %struct.TYPE_4__* null, align 8
@pv_map = common dso_local global %struct.physical_voice_info* null, align 8
@KSL_LEVEL = common dso_local global i64 0, align 8
@OFFS_4OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @set_voice_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_voice_volume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.sbi_instrument*, align 8
  %12 = alloca %struct.physical_voice_info*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %3
  br label %254

23:                                               ; preds = %16
  %24 = load %struct.physical_voice_info*, %struct.physical_voice_info** @pv_map, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %24, i64 %31
  store %struct.physical_voice_info* %32, %struct.physical_voice_info** %12, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load %struct.sbi_instrument**, %struct.sbi_instrument*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.sbi_instrument*, %struct.sbi_instrument** %35, i64 %37
  %39 = load %struct.sbi_instrument*, %struct.sbi_instrument** %38, align 8
  store %struct.sbi_instrument* %39, %struct.sbi_instrument** %11, align 8
  %40 = load %struct.sbi_instrument*, %struct.sbi_instrument** %11, align 8
  %41 = icmp ne %struct.sbi_instrument* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %23
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load %struct.sbi_instrument*, %struct.sbi_instrument** %44, align 8
  %46 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %45, i64 0
  store %struct.sbi_instrument* %46, %struct.sbi_instrument** %11, align 8
  br label %47

47:                                               ; preds = %42, %23
  %48 = load %struct.sbi_instrument*, %struct.sbi_instrument** %11, align 8
  %49 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %254

53:                                               ; preds = %47
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %254

64:                                               ; preds = %53
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %129

74:                                               ; preds = %64
  %75 = load %struct.sbi_instrument*, %struct.sbi_instrument** %11, align 8
  %76 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %7, align 1
  %80 = load %struct.sbi_instrument*, %struct.sbi_instrument** %11, align 8
  %81 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 3
  %84 = load i8, i8* %83, align 1
  store i8 %84, i8* %8, align 1
  %85 = load %struct.sbi_instrument*, %struct.sbi_instrument** %11, align 8
  %86 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 10
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %74
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @calc_vol(i8* %7, i32 %94, i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @calc_vol(i8* %8, i32 %97, i32 %98)
  br label %104

100:                                              ; preds = %74
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @calc_vol(i8* %8, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %93
  %105 = load %struct.physical_voice_info*, %struct.physical_voice_info** %12, align 8
  %106 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* @KSL_LEVEL, align 8
  %109 = load %struct.physical_voice_info*, %struct.physical_voice_info** %12, align 8
  %110 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %108, %113
  %115 = load i8, i8* %7, align 1
  %116 = call i32 @opl3_command(i32 %107, i64 %114, i8 zeroext %115)
  %117 = load %struct.physical_voice_info*, %struct.physical_voice_info** %12, align 8
  %118 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i64, i64* @KSL_LEVEL, align 8
  %121 = load %struct.physical_voice_info*, %struct.physical_voice_info** %12, align 8
  %122 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 1
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %120, %125
  %127 = load i8, i8* %8, align 1
  %128 = call i32 @opl3_command(i32 %119, i64 %126, i8 zeroext %127)
  br label %254

129:                                              ; preds = %64
  %130 = load %struct.sbi_instrument*, %struct.sbi_instrument** %11, align 8
  %131 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  %134 = load i8, i8* %133, align 1
  store i8 %134, i8* %7, align 1
  %135 = load %struct.sbi_instrument*, %struct.sbi_instrument** %11, align 8
  %136 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 3
  %139 = load i8, i8* %138, align 1
  store i8 %139, i8* %8, align 1
  %140 = load %struct.sbi_instrument*, %struct.sbi_instrument** %11, align 8
  %141 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* @OFFS_4OP, align 4
  %144 = add nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  %147 = load i8, i8* %146, align 1
  store i8 %147, i8* %9, align 1
  %148 = load %struct.sbi_instrument*, %struct.sbi_instrument** %11, align 8
  %149 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* @OFFS_4OP, align 4
  %152 = add nsw i32 %151, 3
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = load i8, i8* %154, align 1
  store i8 %155, i8* %10, align 1
  %156 = load %struct.sbi_instrument*, %struct.sbi_instrument** %11, align 8
  %157 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 10
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = and i32 %161, 1
  %163 = shl i32 %162, 1
  %164 = load %struct.sbi_instrument*, %struct.sbi_instrument** %11, align 8
  %165 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* @OFFS_4OP, align 4
  %168 = add nsw i32 10, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = and i32 %172, 1
  %174 = or i32 %163, %173
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  switch i32 %175, label %204 [
    i32 0, label %176
    i32 1, label %180
    i32 2, label %187
    i32 3, label %194
  ]

176:                                              ; preds = %129
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @calc_vol(i8* %10, i32 %177, i32 %178)
  br label %205

180:                                              ; preds = %129
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @calc_vol(i8* %8, i32 %181, i32 %182)
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @calc_vol(i8* %10, i32 %184, i32 %185)
  br label %205

187:                                              ; preds = %129
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @calc_vol(i8* %7, i32 %188, i32 %189)
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @calc_vol(i8* %10, i32 %191, i32 %192)
  br label %205

194:                                              ; preds = %129
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @calc_vol(i8* %7, i32 %195, i32 %196)
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @calc_vol(i8* %9, i32 %198, i32 %199)
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* %6, align 4
  %203 = call i32 @calc_vol(i8* %10, i32 %201, i32 %202)
  br label %205

204:                                              ; preds = %129
  br label %205

205:                                              ; preds = %204, %194, %187, %180, %176
  %206 = load %struct.physical_voice_info*, %struct.physical_voice_info** %12, align 8
  %207 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i64, i64* @KSL_LEVEL, align 8
  %210 = load %struct.physical_voice_info*, %struct.physical_voice_info** %12, align 8
  %211 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %210, i32 0, i32 0
  %212 = load i64*, i64** %211, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 0
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %209, %214
  %216 = load i8, i8* %7, align 1
  %217 = call i32 @opl3_command(i32 %208, i64 %215, i8 zeroext %216)
  %218 = load %struct.physical_voice_info*, %struct.physical_voice_info** %12, align 8
  %219 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load i64, i64* @KSL_LEVEL, align 8
  %222 = load %struct.physical_voice_info*, %struct.physical_voice_info** %12, align 8
  %223 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %222, i32 0, i32 0
  %224 = load i64*, i64** %223, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 1
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %221, %226
  %228 = load i8, i8* %8, align 1
  %229 = call i32 @opl3_command(i32 %220, i64 %227, i8 zeroext %228)
  %230 = load %struct.physical_voice_info*, %struct.physical_voice_info** %12, align 8
  %231 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load i64, i64* @KSL_LEVEL, align 8
  %234 = load %struct.physical_voice_info*, %struct.physical_voice_info** %12, align 8
  %235 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %234, i32 0, i32 0
  %236 = load i64*, i64** %235, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 2
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %233, %238
  %240 = load i8, i8* %9, align 1
  %241 = call i32 @opl3_command(i32 %232, i64 %239, i8 zeroext %240)
  %242 = load %struct.physical_voice_info*, %struct.physical_voice_info** %12, align 8
  %243 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load i64, i64* @KSL_LEVEL, align 8
  %246 = load %struct.physical_voice_info*, %struct.physical_voice_info** %12, align 8
  %247 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %246, i32 0, i32 0
  %248 = load i64*, i64** %247, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 3
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %245, %250
  %252 = load i8, i8* %10, align 1
  %253 = call i32 @opl3_command(i32 %244, i64 %251, i8 zeroext %252)
  br label %254

254:                                              ; preds = %22, %52, %63, %205, %104
  ret void
}

declare dso_local i32 @calc_vol(i8*, i32, i32) #1

declare dso_local i32 @opl3_command(i32, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
