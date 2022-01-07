; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_playback.c_audio_out_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_playback.c_audio_out_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64 }
%struct.snd_line6_pcm = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_3__*, %struct.urb** }
%struct.TYPE_3__ = type { i32 }

@LINE6_ISO_BUFFERS = common dso_local global i32 0, align 4
@LINE6_ISO_PACKETS = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @audio_out_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_out_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca %struct.snd_line6_pcm*, align 8
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.urb*, %struct.urb** %2, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.snd_pcm_substream*
  store %struct.snd_pcm_substream* %14, %struct.snd_pcm_substream** %8, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %16 = call %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %15)
  store %struct.snd_line6_pcm* %16, %struct.snd_line6_pcm** %9, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  store %struct.snd_pcm_runtime* %19, %struct.snd_pcm_runtime** %10, align 8
  %20 = load i32, i32* @LINE6_ISO_BUFFERS, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %36, %1
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load %struct.urb*, %struct.urb** %2, align 8
  %27 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %9, align 8
  %28 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %27, i32 0, i32 7
  %29 = load %struct.urb**, %struct.urb*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.urb*, %struct.urb** %29, i64 %31
  %33 = load %struct.urb*, %struct.urb** %32, align 8
  %34 = icmp eq %struct.urb* %26, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %37

36:                                               ; preds = %25
  br label %21

37:                                               ; preds = %35, %21
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %153

41:                                               ; preds = %37
  %42 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %47, %41
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %3, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load %struct.urb*, %struct.urb** %2, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %43

60:                                               ; preds = %43
  %61 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %9, align 8
  %62 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %61, i32 0, i32 3
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %9, align 8
  %67 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %66, i32 0, i32 6
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %65, %70
  %72 = sext i32 %71 to i64
  %73 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %9, align 8
  %74 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %72
  store i64 %76, i64* %74, align 8
  %77 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %9, align 8
  %78 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %79, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %60
  %85 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %9, align 8
  %89 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %84, %60
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %9, align 8
  %95 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %94, i32 0, i32 5
  %96 = call i32 @clear_bit(i32 %93, i32* %95)
  %97 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %115, %92
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %3, align 4
  %101 = icmp ne i32 %99, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = load %struct.urb*, %struct.urb** %2, align 8
  %104 = getelementptr inbounds %struct.urb, %struct.urb* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ESHUTDOWN, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  store i32 1, i32* %6, align 4
  br label %116

115:                                              ; preds = %102
  br label %98

116:                                              ; preds = %114, %98
  %117 = load i32, i32* %4, align 4
  %118 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %9, align 8
  %119 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %118, i32 0, i32 4
  %120 = call i64 @test_bit(i32 %117, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 1, i32* %6, align 4
  br label %123

123:                                              ; preds = %122, %116
  %124 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %9, align 8
  %125 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %124, i32 0, i32 3
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %153, label %130

130:                                              ; preds = %123
  %131 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %132 = call i32 @submit_audio_out_urb(%struct.snd_pcm_substream* %131)
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %9, align 8
  %135 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %9, align 8
  %139 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp sge i32 %137, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %130
  %143 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %9, align 8
  %144 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %9, align 8
  %147 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %151 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %150)
  br label %152

152:                                              ; preds = %142, %130
  br label %153

153:                                              ; preds = %40, %152, %123
  ret void
}

declare dso_local %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @submit_audio_out_urb(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
