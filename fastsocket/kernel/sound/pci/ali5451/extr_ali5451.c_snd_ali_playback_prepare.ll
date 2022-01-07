; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, %struct.snd_ali_voice* }
%struct.snd_ali_voice = type { i64, i32, i32, %struct.snd_ali_voice* }
%struct.snd_ali = type { i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"playback_prepare ...\0A\00", align 1
@ALI_SPDIF_IN_CHANNEL = common dso_local global i64 0, align 8
@ALI_PCM_IN_CHANNEL = common dso_local global i64 0, align 8
@ALI_GLOBAL_CONTROL = common dso_local global i32 0, align 4
@ALI_SPDIF_OUT_CH_ENABLE = common dso_local global i32 0, align 4
@ALI_SPDIF_OUT_CHANNEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"playback_prepare: eso=%xh count=%xh\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"playback_prepare:\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"ch=%d, Rate=%d Delta=%xh,GVSEL=%xh,PAN=%xh,CTRL=%xh\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ali_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ali*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_ali_voice*, align 8
  %6 = alloca %struct.snd_ali_voice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = call %struct.snd_ali* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %15)
  store %struct.snd_ali* %16, %struct.snd_ali** %3, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  store %struct.snd_pcm_runtime* %19, %struct.snd_pcm_runtime** %4, align 8
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 4
  %22 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %21, align 8
  store %struct.snd_ali_voice* %22, %struct.snd_ali_voice** %5, align 8
  %23 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %24 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %23, i32 0, i32 3
  %25 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %24, align 8
  store %struct.snd_ali_voice* %25, %struct.snd_ali_voice** %6, align 8
  %26 = call i32 (i8*, ...) @snd_ali_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %28 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @snd_ali_convert_rate(i32 %32, i32 0)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %35 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ALI_SPDIF_IN_CHANNEL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %1
  %40 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ALI_PCM_IN_CHANNEL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39, %1
  %46 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %47 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %48 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @snd_ali_disable_special_channel(%struct.snd_ali* %46, i64 %49)
  br label %77

51:                                               ; preds = %39
  %52 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %53 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %58 = load i32, i32* @ALI_GLOBAL_CONTROL, align 4
  %59 = call i32 @ALI_REG(%struct.snd_ali* %57, i32 %58)
  %60 = call i32 @inl(i32 %59)
  %61 = load i32, i32* @ALI_SPDIF_OUT_CH_ENABLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %56
  %65 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %66 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ALI_SPDIF_OUT_CHANNEL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @snd_ali_set_spdif_out_rate(%struct.snd_ali* %71, i32 %74)
  store i32 4096, i32* %8, align 4
  br label %76

76:                                               ; preds = %70, %64, %56, %51
  br label %77

77:                                               ; preds = %76, %45
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %7, align 4
  %81 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %85 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %90 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %92 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %95 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i8*, ...) @snd_ali_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %96)
  %98 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %99 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  %102 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %103 = call i32 @snd_ali_control_mode(%struct.snd_pcm_substream* %102)
  store i32 %103, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %104 = call i32 (i8*, ...) @snd_ali_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %106 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %109 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 (i8*, ...) @snd_ali_printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %107, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %117 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %118 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @snd_ali_write_voice_regs(%struct.snd_ali* %116, i64 %119, i32 %120, i32 0, i32 %121, i32 %122, i32 0, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %130 = icmp ne %struct.snd_ali_voice* %129, null
  br i1 %130, label %131, label %158

131:                                              ; preds = %77
  %132 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %133 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %136 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %138 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = shl i32 %139, 1
  %141 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %142 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %144 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  %147 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %148 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %149 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %14, align 4
  %157 = call i32 @snd_ali_write_voice_regs(%struct.snd_ali* %147, i64 %150, i32 %151, i32 0, i32 %152, i32 %153, i32 0, i32 %154, i32 127, i32 1023, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %131, %77
  %159 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %160 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %159, i32 0, i32 0
  %161 = call i32 @spin_unlock_irq(i32* %160)
  ret i32 0
}

declare dso_local %struct.snd_ali* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ali_printk(i8*, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_ali_convert_rate(i32, i32) #1

declare dso_local i32 @snd_ali_disable_special_channel(%struct.snd_ali*, i64) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i32) #1

declare dso_local i32 @snd_ali_set_spdif_out_rate(%struct.snd_ali*, i32) #1

declare dso_local i32 @snd_ali_control_mode(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ali_write_voice_regs(%struct.snd_ali*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
