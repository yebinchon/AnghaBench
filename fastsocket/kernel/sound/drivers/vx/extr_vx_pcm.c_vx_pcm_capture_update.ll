; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_capture_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_capture_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.vx_pipe = type { i32, i32, i32, i32, i32 }

@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@DMA_READ_ALIGN = common dso_local global i32 0, align 4
@IRQ_CONNECT_STREAM_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, %struct.snd_pcm_substream*, %struct.vx_pipe*)* @vx_pcm_capture_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_pcm_capture_update(%struct.vx_core* %0, %struct.snd_pcm_substream* %1, %struct.vx_pipe* %2) #0 {
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.vx_pipe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  %11 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  store %struct.vx_pipe* %2, %struct.vx_pipe** %6, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %10, align 8
  %15 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %16 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %21 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %3
  br label %170

27:                                               ; preds = %19
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %32 = call i32 @snd_pcm_capture_avail(%struct.snd_pcm_runtime* %31)
  %33 = sub nsw i32 %30, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %170

37:                                               ; preds = %27
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %42 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %43 = call i32 @vx_query_hbuffer_size(%struct.vx_core* %41, %struct.vx_pipe* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %166

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i32, i32* %7, align 4
  %55 = sdiv i32 %54, 3
  %56 = mul nsw i32 %55, 3
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @DMA_READ_ALIGN, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %166

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @DMA_READ_ALIGN, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %83, %61
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %65
  %69 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %70 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %73 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = srem i32 %71, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %90

78:                                               ; preds = %68
  %79 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %80 = call i64 @vx_wait_for_rx_full(%struct.vx_core* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %166

83:                                               ; preds = %78
  %84 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %85 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %86 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %87 = call i32 @vx_pcm_read_per_bytes(%struct.vx_core* %84, %struct.snd_pcm_runtime* %85, %struct.vx_pipe* %86)
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %88, 3
  store i32 %89, i32* %9, align 4
  br label %65

90:                                               ; preds = %77, %65
  %91 = load i32, i32* %9, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %95 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, 3
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sdiv i32 %98, %99
  %101 = load i32, i32* %11, align 4
  %102 = mul nsw i32 %100, %101
  store i32 %102, i32* %8, align 4
  %103 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %104 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %105 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @vx_pseudo_dma_read(%struct.vx_core* %103, %struct.snd_pcm_runtime* %104, %struct.vx_pipe* %105, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %93, %90
  br label %112

112:                                              ; preds = %120, %111
  %113 = load i32, i32* %9, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %117 = call i64 @vx_wait_for_rx_full(%struct.vx_core* %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %166

120:                                              ; preds = %115
  %121 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %122 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %123 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %124 = call i32 @vx_pcm_read_per_bytes(%struct.vx_core* %121, %struct.snd_pcm_runtime* %122, %struct.vx_pipe* %123)
  %125 = load i32, i32* %9, align 4
  %126 = sub nsw i32 %125, 3
  store i32 %126, i32* %9, align 4
  br label %112

127:                                              ; preds = %112
  %128 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %129 = load i32, i32* @IRQ_CONNECT_STREAM_NEXT, align 4
  %130 = call i32 @vx_send_rih_nolock(%struct.vx_core* %128, i32 %129)
  %131 = load i32, i32* @DMA_READ_ALIGN, align 4
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %135, %127
  %133 = load i32, i32* %9, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %137 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %138 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %139 = call i32 @vx_pcm_read_per_bytes(%struct.vx_core* %136, %struct.snd_pcm_runtime* %137, %struct.vx_pipe* %138)
  %140 = load i32, i32* %9, align 4
  %141 = sub nsw i32 %140, 3
  store i32 %141, i32* %9, align 4
  br label %132

142:                                              ; preds = %132
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %145 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, %143
  store i32 %147, i32* %145, align 4
  %148 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %149 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %152 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = icmp sge i32 %150, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %142
  %156 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %157 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %160 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = srem i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %164 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %163)
  br label %165

165:                                              ; preds = %155, %142
  br label %170

166:                                              ; preds = %119, %82, %60, %46
  %167 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %168 = load i32, i32* @IRQ_CONNECT_STREAM_NEXT, align 4
  %169 = call i32 @vx_send_rih_nolock(%struct.vx_core* %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %165, %36, %26
  ret void
}

declare dso_local i32 @snd_pcm_capture_avail(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @vx_query_hbuffer_size(%struct.vx_core*, %struct.vx_pipe*) #1

declare dso_local i64 @vx_wait_for_rx_full(%struct.vx_core*) #1

declare dso_local i32 @vx_pcm_read_per_bytes(%struct.vx_core*, %struct.snd_pcm_runtime*, %struct.vx_pipe*) #1

declare dso_local i32 @vx_pseudo_dma_read(%struct.vx_core*, %struct.snd_pcm_runtime*, %struct.vx_pipe*, i32) #1

declare dso_local i32 @vx_send_rih_nolock(%struct.vx_core*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
