; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_fsi.c_fsi_data_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_fsi.c_fsi_data_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32, i32, i32, i32, i32, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_priv*)* @fsi_data_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_data_push(%struct.fsi_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_priv*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fsi_priv* %0, %struct.fsi_priv** %3, align 8
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %5, align 8
  %9 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %10 = icmp ne %struct.fsi_priv* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %13 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %12, i32 0, i32 6
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  %15 = icmp ne %struct.snd_pcm_substream* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %18 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %17, i32 0, i32 6
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %18, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  %22 = icmp ne %struct.snd_pcm_runtime* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16, %11, %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %133

26:                                               ; preds = %16
  %27 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %28 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %27, i32 0, i32 6
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %28, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 0
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %30, align 8
  store %struct.snd_pcm_runtime* %31, %struct.snd_pcm_runtime** %4, align 8
  %32 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %33 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %36 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %39 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  %42 = mul nsw i32 %37, %41
  %43 = icmp sge i32 %34, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %26
  %45 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %46 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %45, i32 0, i32 6
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %46, align 8
  store %struct.snd_pcm_substream* %47, %struct.snd_pcm_substream** %5, align 8
  %48 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %49 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = srem i32 %51, %54
  %56 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %57 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %59 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 0, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %44
  %63 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %64 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %44
  br label %66

66:                                               ; preds = %65, %26
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %68 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %67, i32 1)
  %69 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %70 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %68, %71
  store i32 %72, i32* %8, align 4
  %73 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %74 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %77 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %75, %78
  %80 = load i32, i32* %8, align 4
  %81 = sdiv i32 %79, %80
  store i32 %81, i32* %6, align 4
  %82 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %83 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %86 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %90 = call i32 @fsi_get_fifo_residue(%struct.fsi_priv* %89, i32 1)
  %91 = sub nsw i32 %88, %90
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %66
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %95, %66
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 2, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %102 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @fsi_16data_push(%struct.fsi_priv* %101, %struct.snd_pcm_runtime* %102, i32 %103)
  br label %117

105:                                              ; preds = %97
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 4, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %110 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @fsi_32data_push(%struct.fsi_priv* %109, %struct.snd_pcm_runtime* %110, i32 %111)
  br label %116

113:                                              ; preds = %105
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %133

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116, %100
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %8, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %122 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %126 = call i32 @fsi_irq_enable(%struct.fsi_priv* %125, i32 1)
  %127 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %128 = icmp ne %struct.snd_pcm_substream* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %117
  %130 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %131 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %130)
  br label %132

132:                                              ; preds = %129, %117
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %113, %23
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @fsi_get_fifo_residue(%struct.fsi_priv*, i32) #1

declare dso_local i32 @fsi_16data_push(%struct.fsi_priv*, %struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @fsi_32data_push(%struct.fsi_priv*, %struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @fsi_irq_enable(%struct.fsi_priv*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
