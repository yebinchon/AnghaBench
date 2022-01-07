; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_mixer_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_mixer_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mix_ent = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@SOUND_MIXER_PHONEOUT = common dso_local global i32 0, align 4
@SOUND_MIXER_VOLUME = common dso_local global i32 0, align 4
@mix_devs = common dso_local global %struct.mix_ent* null, align 8
@WACMD_GET_LEVEL = common dso_local global i32 0, align 4
@WACMD_SET_MIXER = common dso_local global i32 0, align 4
@WACMD_SET_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @waveartist_mixer_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waveartist_mixer_update(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mix_ent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 8
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ugt i32 %27, 100
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 100, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %6, align 4
  %32 = icmp ugt i32 %31, 100
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 100, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = call i64 (...) @machine_is_netwinder()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SOUND_MIXER_PHONEOUT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @SOUND_MIXER_VOLUME, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %37, %34
  %44 = load %struct.mix_ent*, %struct.mix_ent** @mix_devs, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.mix_ent, %struct.mix_ent* %44, i64 %46
  %48 = getelementptr inbounds %struct.mix_ent, %struct.mix_ent* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.mix_ent*, %struct.mix_ent** @mix_devs, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.mix_ent, %struct.mix_ent* %52, i64 %54
  %56 = getelementptr inbounds %struct.mix_ent, %struct.mix_ent* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %128

59:                                               ; preds = %51, %43
  %60 = load %struct.mix_ent*, %struct.mix_ent** @mix_devs, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.mix_ent, %struct.mix_ent* %60, i64 %62
  store %struct.mix_ent* %63, %struct.mix_ent** %7, align 8
  %64 = load %struct.mix_ent*, %struct.mix_ent** %7, align 8
  %65 = getelementptr inbounds %struct.mix_ent, %struct.mix_ent* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mix_ent*, %struct.mix_ent** %7, align 8
  %68 = getelementptr inbounds %struct.mix_ent, %struct.mix_ent* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %66, %69
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.mix_ent*, %struct.mix_ent** %7, align 8
  %73 = getelementptr inbounds %struct.mix_ent, %struct.mix_ent* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = mul i32 %71, %74
  %76 = udiv i32 %75, 100
  %77 = load %struct.mix_ent*, %struct.mix_ent** %7, align 8
  %78 = getelementptr inbounds %struct.mix_ent, %struct.mix_ent* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %76, %79
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.mix_ent*, %struct.mix_ent** %7, align 8
  %83 = getelementptr inbounds %struct.mix_ent, %struct.mix_ent* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = mul i32 %81, %84
  %86 = udiv i32 %85, 100
  %87 = load %struct.mix_ent*, %struct.mix_ent** %7, align 8
  %88 = getelementptr inbounds %struct.mix_ent, %struct.mix_ent* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %86, %89
  store i32 %90, i32* %6, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = load i32, i32* @WACMD_GET_LEVEL, align 4
  %93 = load %struct.mix_ent*, %struct.mix_ent** %7, align 8
  %94 = getelementptr inbounds %struct.mix_ent, %struct.mix_ent* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 8
  %97 = or i32 %92, %96
  %98 = call i32 @waveartist_cmd1_r(%struct.TYPE_5__* %91, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = load i32, i32* @WACMD_GET_LEVEL, align 4
  %101 = load %struct.mix_ent*, %struct.mix_ent** %7, align 8
  %102 = getelementptr inbounds %struct.mix_ent, %struct.mix_ent* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 8
  %105 = or i32 %100, %104
  %106 = call i32 @waveartist_cmd1_r(%struct.TYPE_5__* %99, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %8, align 4
  %113 = and i32 %111, %112
  %114 = or i32 %110, %113
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %8, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %119, %120
  %122 = or i32 %118, %121
  store i32 %122, i32* %10, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %124 = load i32, i32* @WACMD_SET_MIXER, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @waveartist_cmd3(%struct.TYPE_5__* %123, i32 %124, i32 %125, i32 %126)
  br label %152

128:                                              ; preds = %51
  %129 = load i32, i32* %4, align 4
  switch i32 %129, label %151 [
    i32 129, label %130
    i32 128, label %140
  ]

130:                                              ; preds = %128
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %132 = load i32, i32* @WACMD_SET_LEVEL, align 4
  %133 = load i32, i32* %5, align 4
  %134 = mul i32 %133, 32767
  %135 = udiv i32 %134, 100
  %136 = load i32, i32* %6, align 4
  %137 = mul i32 %136, 32767
  %138 = udiv i32 %137, 100
  %139 = call i32 @waveartist_cmd3(%struct.TYPE_5__* %131, i32 %132, i32 %135, i32 %138)
  br label %151

140:                                              ; preds = %128
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %142 = load i32, i32* @WACMD_SET_LEVEL, align 4
  %143 = or i32 256, %142
  %144 = load i32, i32* %5, align 4
  %145 = mul i32 %144, 32767
  %146 = udiv i32 %145, 100
  %147 = load i32, i32* %6, align 4
  %148 = mul i32 %147, 32767
  %149 = udiv i32 %148, 100
  %150 = call i32 @waveartist_cmd3(%struct.TYPE_5__* %141, i32 %143, i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %128, %140, %130
  br label %152

152:                                              ; preds = %151, %59
  ret void
}

declare dso_local i64 @machine_is_netwinder(...) #1

declare dso_local i32 @waveartist_cmd1_r(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @waveartist_cmd3(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
