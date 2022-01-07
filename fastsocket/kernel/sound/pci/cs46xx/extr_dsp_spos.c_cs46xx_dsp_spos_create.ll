; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_spos_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_spos_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp_spos_instance = type { i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i64, i64 }
%struct.TYPE_3__ = type { i32*, i64, i64 }
%struct.snd_cs46xx = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DSP_MAX_SYMBOLS = common dso_local global i32 0, align 4
@DSP_CODE_BYTE_SIZE = common dso_local global i32 0, align 4
@DSP_MAX_MODULES = common dso_local global i32 0, align 4
@SNDRV_PCM_DEFAULT_CON_SPDIF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dsp_spos_instance* @cs46xx_dsp_spos_create(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca %struct.dsp_spos_instance*, align 8
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca %struct.dsp_spos_instance*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.dsp_spos_instance* @kzalloc(i32 112, i32 %5)
  store %struct.dsp_spos_instance* %6, %struct.dsp_spos_instance** %4, align 8
  %7 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %8 = icmp eq %struct.dsp_spos_instance* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.dsp_spos_instance* null, %struct.dsp_spos_instance** %2, align 8
  br label %117

10:                                               ; preds = %1
  %11 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %12 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %11, i32 0, i32 12
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @DSP_MAX_SYMBOLS, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32* @vmalloc(i32 %17)
  %19 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %20 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %19, i32 0, i32 12
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32* %18, i32** %21, align 8
  %22 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %23 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %22, i32 0, i32 12
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %26 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %25, i32 0, i32 12
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %10
  %31 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %32 = call i32 @cs46xx_dsp_spos_destroy(%struct.snd_cs46xx* %31)
  br label %114

33:                                               ; preds = %10
  %34 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %35 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %34, i32 0, i32 11
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %38 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %37, i32 0, i32 11
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @DSP_CODE_BYTE_SIZE, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kmalloc(i32 %40, i32 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %45 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %44, i32 0, i32 11
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32* %43, i32** %46, align 8
  %47 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %48 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %47, i32 0, i32 11
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %33
  %53 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %54 = call i32 @cs46xx_dsp_spos_destroy(%struct.snd_cs46xx* %53)
  br label %114

55:                                               ; preds = %33
  %56 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %57 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %56, i32 0, i32 10
  store i64 0, i64* %57, align 8
  %58 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %59 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %58, i32 0, i32 9
  store i64 0, i64* %59, align 8
  %60 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %61 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %60, i32 0, i32 8
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @DSP_MAX_MODULES, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @kmalloc(i32 %65, i32 %66)
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %70 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %69, i32 0, i32 7
  store i32* %68, i32** %70, align 8
  %71 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %72 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %71, i32 0, i32 7
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %55
  %76 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %77 = call i32 @cs46xx_dsp_spos_destroy(%struct.snd_cs46xx* %76)
  br label %114

78:                                               ; preds = %55
  %79 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %80 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %79, i32 0, i32 0
  store i32 48000, i32* %80, align 8
  %81 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %82 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %81, i32 0, i32 1
  store i32 32768, i32* %82, align 4
  %83 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %84 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %83, i32 0, i32 2
  store i32 32768, i32* %84, align 8
  %85 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %86 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %85, i32 0, i32 3
  store i32 32768, i32* %86, align 4
  %87 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %88 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %87, i32 0, i32 4
  store i32 32768, i32* %88, align 8
  %89 = load i32, i32* @SNDRV_PCM_DEFAULT_CON_SPDIF, align 4
  %90 = and i32 %89, 255
  %91 = call i64 @_wrap_all_bits(i32 %90)
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %92, 24
  %94 = load i32, i32* @SNDRV_PCM_DEFAULT_CON_SPDIF, align 4
  %95 = ashr i32 %94, 8
  %96 = and i32 %95, 255
  %97 = call i64 @_wrap_all_bits(i32 %96)
  %98 = trunc i64 %97 to i32
  %99 = shl i32 %98, 16
  %100 = or i32 %93, %99
  %101 = load i32, i32* @SNDRV_PCM_DEFAULT_CON_SPDIF, align 4
  %102 = ashr i32 %101, 24
  %103 = and i32 %102, 255
  %104 = call i64 @_wrap_all_bits(i32 %103)
  %105 = trunc i64 %104 to i32
  %106 = or i32 %100, %105
  %107 = or i32 %106, 8192
  %108 = or i32 %107, 4096
  %109 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %110 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 8
  %111 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %112 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %111, i32 0, i32 5
  store i32 %108, i32* %112, align 4
  %113 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  store %struct.dsp_spos_instance* %113, %struct.dsp_spos_instance** %2, align 8
  br label %117

114:                                              ; preds = %75, %52, %30
  %115 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %116 = call i32 @kfree(%struct.dsp_spos_instance* %115)
  store %struct.dsp_spos_instance* null, %struct.dsp_spos_instance** %2, align 8
  br label %117

117:                                              ; preds = %114, %78, %9
  %118 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %2, align 8
  ret %struct.dsp_spos_instance* %118
}

declare dso_local %struct.dsp_spos_instance* @kzalloc(i32, i32) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @cs46xx_dsp_spos_destroy(%struct.snd_cs46xx*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @_wrap_all_bits(i32) #1

declare dso_local i32 @kfree(%struct.dsp_spos_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
