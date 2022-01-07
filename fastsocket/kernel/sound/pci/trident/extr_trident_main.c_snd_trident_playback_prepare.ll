; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, %struct.snd_trident_voice* }
%struct.snd_trident_voice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, %struct.TYPE_2__*, %struct.snd_trident_voice* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_trident = type { i64, i32, %struct.snd_trident_pcm_mixer* }
%struct.snd_trident_pcm_mixer = type { i32, i32, i32, i32 }

@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_trident_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_trident*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_trident_voice*, align 8
  %6 = alloca %struct.snd_trident_voice*, align 8
  %7 = alloca %struct.snd_trident_pcm_mixer*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_trident* %9, %struct.snd_trident** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %4, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 4
  %15 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %14, align 8
  store %struct.snd_trident_voice* %15, %struct.snd_trident_voice** %5, align 8
  %16 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %17 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %16, i32 0, i32 19
  %18 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %17, align 8
  store %struct.snd_trident_voice* %18, %struct.snd_trident_voice** %6, align 8
  %19 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %20 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %19, i32 0, i32 2
  %21 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %20, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %21, i64 %24
  store %struct.snd_trident_pcm_mixer* %25, %struct.snd_trident_pcm_mixer** %7, align 8
  %26 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %27 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_trident_convert_rate(i32 %31)
  %33 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %34 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %33, i32 0, i32 17
  store i32 %32, i32* %34, align 8
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @snd_trident_spurious_threshold(i32 %37, i32 %40)
  %42 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %43 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %42, i32 0, i32 16
  store i32 %41, i32* %43, align 4
  %44 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %45 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %44, i32 0, i32 18
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %1
  %49 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %50 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %49, i32 0, i32 18
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %55 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %54, i32 0, i32 15
  store i32 %53, i32* %55, align 8
  br label %62

56:                                               ; preds = %1
  %57 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %61 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %60, i32 0, i32 15
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %56, %48
  %63 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %64 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %63, i32 0, i32 14
  store i64 0, i64* %64, align 8
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %70 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %72 = call i32 @snd_trident_control_mode(%struct.snd_pcm_substream* %71)
  %73 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %74 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %73, i32 0, i32 13
  store i32 %72, i32* %74, align 8
  %75 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %76 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %75, i32 0, i32 1
  store i32 3, i32* %76, align 4
  %77 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %78 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %80 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %79, i32 0, i32 12
  store i64 0, i64* %80, align 8
  %81 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %82 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %81, i32 0, i32 11
  store i64 0, i64* %82, align 8
  %83 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %84 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %83, i32 0, i32 10
  store i64 0, i64* %84, align 8
  %85 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %7, align 8
  %86 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %89 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %7, align 8
  %91 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %94 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %7, align 8
  %96 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %99 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %7, align 8
  %101 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %104 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 8
  %105 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %106 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %105, i32 0, i32 7
  store i32 0, i32* %106, align 4
  %107 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %108 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %107, i32 0, i32 7
  store i32 0, i32* %108, align 4
  %109 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %110 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %111 = call i32 @snd_trident_write_voice_regs(%struct.snd_trident* %109, %struct.snd_trident_voice* %110)
  %112 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %113 = icmp ne %struct.snd_trident_voice* %112, null
  br i1 %113, label %114, label %189

114:                                              ; preds = %62
  %115 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %116 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %115, i32 0, i32 17
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %119 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %118, i32 0, i32 17
  store i32 %117, i32* %119, align 8
  %120 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %121 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %120, i32 0, i32 16
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %124 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %123, i32 0, i32 16
  store i32 %122, i32* %124, align 4
  %125 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %126 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %125, i32 0, i32 15
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %129 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %128, i32 0, i32 15
  store i32 %127, i32* %129, align 8
  %130 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %131 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %130, i32 0, i32 14
  store i64 0, i64* %131, align 8
  %132 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %133 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 %134, 2
  %136 = add nsw i32 %135, 4
  %137 = sub nsw i32 %136, 1
  %138 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %139 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %141 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %140, i32 0, i32 13
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %144 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %143, i32 0, i32 13
  store i32 %142, i32* %144, align 8
  %145 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %146 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %145, i32 0, i32 1
  store i32 3, i32* %146, align 4
  %147 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %148 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 0, i32 1
  %154 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %155 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  %156 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %157 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %156, i32 0, i32 12
  store i64 0, i64* %157, align 8
  %158 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %159 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %158, i32 0, i32 11
  store i64 0, i64* %159, align 8
  %160 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %161 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %160, i32 0, i32 10
  store i64 0, i64* %161, align 8
  %162 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %163 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %162, i32 0, i32 3
  store i32 1023, i32* %163, align 4
  %164 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %165 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %164, i32 0, i32 5
  store i32 127, i32* %165, align 4
  %166 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %167 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %166, i32 0, i32 4
  store i32 127, i32* %167, align 8
  %168 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %169 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %168, i32 0, i32 6
  store i32 127, i32* %169, align 8
  %170 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %171 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %170, i32 0, i32 7
  store i32 0, i32* %171, align 4
  %172 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %173 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %174 = call i32 @snd_trident_write_voice_regs(%struct.snd_trident* %172, %struct.snd_trident_voice* %173)
  %175 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %176 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %175, i32 0, i32 8
  store i32 1, i32* %176, align 8
  %177 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %178 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %181 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %180, i32 0, i32 9
  store i32 %179, i32* %181, align 4
  %182 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %183 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = mul nsw i32 %184, 2
  %186 = sub nsw i32 %185, 1
  %187 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %188 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  br label %189

189:                                              ; preds = %114, %62
  %190 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %191 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %190, i32 0, i32 1
  %192 = call i32 @spin_unlock_irq(i32* %191)
  ret i32 0
}

declare dso_local %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_trident_convert_rate(i32) #1

declare dso_local i32 @snd_trident_spurious_threshold(i32, i32) #1

declare dso_local i32 @snd_trident_control_mode(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_trident_write_voice_regs(%struct.snd_trident*, %struct.snd_trident_voice*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
