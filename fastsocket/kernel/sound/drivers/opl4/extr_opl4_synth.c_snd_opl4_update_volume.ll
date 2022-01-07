; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_update_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_update_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl4 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.opl4_voice = type { i64, i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@snd_opl4_volume_table = common dso_local global i64* null, align 8
@volume_boost = common dso_local global i32 0, align 4
@OPL4_REG_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_opl4*, %struct.opl4_voice*)* @snd_opl4_update_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_opl4_update_volume(%struct.snd_opl4* %0, %struct.opl4_voice* %1) #0 {
  %3 = alloca %struct.snd_opl4*, align 8
  %4 = alloca %struct.opl4_voice*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_opl4* %0, %struct.snd_opl4** %3, align 8
  store %struct.opl4_voice* %1, %struct.opl4_voice** %4, align 8
  %6 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %7 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i64*, i64** @snd_opl4_volume_table, align 8
  %12 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %13 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 127
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %11, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i64*, i64** @snd_opl4_volume_table, align 8
  %26 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %27 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 127
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %25, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load i64*, i64** @snd_opl4_volume_table, align 8
  %40 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %41 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %40, i32 0, i32 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 127
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %39, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  %53 = load i64*, i64** @snd_opl4_volume_table, align 8
  %54 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %55 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 127, %63
  %65 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %66 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %65, i32 0, i32 3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %64, %69
  %71 = sdiv i32 %70, 254
  %72 = sub nsw i32 127, %71
  %73 = load i32, i32* @volume_boost, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %83

78:                                               ; preds = %2
  %79 = load i32, i32* %5, align 4
  %80 = icmp sgt i32 %79, 126
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 126, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %78
  br label %83

83:                                               ; preds = %82, %77
  %84 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %85 = load i64, i64* @OPL4_REG_LEVEL, align 8
  %86 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %87 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load i32, i32* %5, align 4
  %91 = shl i32 %90, 1
  %92 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %93 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %91, %94
  %96 = call i32 @snd_opl4_write(%struct.snd_opl4* %84, i64 %89, i32 %95)
  %97 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %98 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %97, i32 0, i32 1
  store i32 0, i32* %98, align 8
  ret void
}

declare dso_local i32 @snd_opl4_write(%struct.snd_opl4*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
