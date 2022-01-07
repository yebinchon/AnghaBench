; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_loopback_pos_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_loopback_pos_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_cable = type { i32, i32, i32, %struct.loopback_pcm** }
%struct.loopback_pcm = type { i64, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loopback_cable*)* @loopback_pos_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_pos_update(%struct.loopback_cable* %0) #0 {
  %2 = alloca %struct.loopback_cable*, align 8
  %3 = alloca %struct.loopback_pcm*, align 8
  %4 = alloca %struct.loopback_pcm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.loopback_cable* %0, %struct.loopback_cable** %2, align 8
  %11 = load %struct.loopback_cable*, %struct.loopback_cable** %2, align 8
  %12 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %11, i32 0, i32 3
  %13 = load %struct.loopback_pcm**, %struct.loopback_pcm*** %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %15 = getelementptr inbounds %struct.loopback_pcm*, %struct.loopback_pcm** %13, i64 %14
  %16 = load %struct.loopback_pcm*, %struct.loopback_pcm** %15, align 8
  store %struct.loopback_pcm* %16, %struct.loopback_pcm** %3, align 8
  %17 = load %struct.loopback_cable*, %struct.loopback_cable** %2, align 8
  %18 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %17, i32 0, i32 3
  %19 = load %struct.loopback_pcm**, %struct.loopback_pcm*** %18, align 8
  %20 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %21 = getelementptr inbounds %struct.loopback_pcm*, %struct.loopback_pcm** %19, i64 %20
  %22 = load %struct.loopback_pcm*, %struct.loopback_pcm** %21, align 8
  store %struct.loopback_pcm* %22, %struct.loopback_pcm** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %23 = load %struct.loopback_cable*, %struct.loopback_cable** %2, align 8
  %24 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %23, i32 0, i32 2
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.loopback_cable*, %struct.loopback_cable** %2, align 8
  %28 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.loopback_cable*, %struct.loopback_cable** %2, align 8
  %31 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %29, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 1, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %1
  %41 = load i64, i64* @jiffies, align 8
  %42 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %43 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %41, %44
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %48 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %46
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %40, %1
  %52 = load i32, i32* %7, align 4
  %53 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %54 = trunc i64 %53 to i32
  %55 = shl i32 1, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load i64, i64* @jiffies, align 8
  %60 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %61 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %59, %62
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %66 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, %64
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %58, %51
  %70 = load i64, i64* %5, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i64, i64* %6, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %154

76:                                               ; preds = %72, %69
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = sub i64 %82, %83
  %85 = call i32 @bytepos_delta(%struct.loopback_pcm* %81, i64 %84)
  store i32 %85, i32* %8, align 4
  %86 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @bytepos_finish(%struct.loopback_pcm* %86, i32 %87)
  %89 = load i64, i64* %6, align 8
  store i64 %89, i64* %5, align 8
  br label %108

90:                                               ; preds = %76
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %5, align 8
  %98 = sub i64 %96, %97
  %99 = call i32 @bytepos_delta(%struct.loopback_pcm* %95, i64 %98)
  store i32 %99, i32* %8, align 4
  %100 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @clear_capture_buf(%struct.loopback_pcm* %100, i32 %101)
  %103 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @bytepos_finish(%struct.loopback_pcm* %103, i32 %104)
  %106 = load i64, i64* %5, align 8
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %94, %90
  br label %108

108:                                              ; preds = %107, %80
  %109 = load i64, i64* %5, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i64, i64* %6, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %154

115:                                              ; preds = %111, %108
  %116 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @bytepos_delta(%struct.loopback_pcm* %116, i64 %117)
  store i32 %118, i32* %8, align 4
  %119 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @bytepos_delta(%struct.loopback_pcm* %119, i64 %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %115
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %8, align 4
  %128 = sub i32 %126, %127
  %129 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %130 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %8, align 4
  br label %143

132:                                              ; preds = %115
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ugt i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = sub i32 %137, %138
  %140 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %141 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %136, %132
  br label %143

143:                                              ; preds = %142, %125
  %144 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %145 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @copy_play_buf(%struct.loopback_pcm* %144, %struct.loopback_pcm* %145, i32 %146)
  %148 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @bytepos_finish(%struct.loopback_pcm* %148, i32 %149)
  %151 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @bytepos_finish(%struct.loopback_pcm* %151, i32 %152)
  br label %154

154:                                              ; preds = %143, %114, %75
  %155 = load %struct.loopback_cable*, %struct.loopback_cable** %2, align 8
  %156 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %155, i32 0, i32 2
  %157 = load i64, i64* %10, align 8
  %158 = call i32 @spin_unlock_irqrestore(i32* %156, i64 %157)
  %159 = load i32, i32* %7, align 4
  ret i32 %159
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bytepos_delta(%struct.loopback_pcm*, i64) #1

declare dso_local i32 @bytepos_finish(%struct.loopback_pcm*, i32) #1

declare dso_local i32 @clear_capture_buf(%struct.loopback_pcm*, i32) #1

declare dso_local i32 @copy_play_buf(%struct.loopback_pcm*, %struct.loopback_pcm*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
