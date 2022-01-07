; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_snd-go7007.c_parse_audio_stream_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_snd-go7007.c_parse_audio_stream_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { %struct.go7007_snd* }
%struct.go7007_snd = type { i64, i64, i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.go7007*, i32*, i32)* @parse_audio_stream_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_audio_stream_data(%struct.go7007* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.go7007_snd*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.go7007*, %struct.go7007** %4, align 8
  %12 = getelementptr inbounds %struct.go7007, %struct.go7007* %11, i32 0, i32 0
  %13 = load %struct.go7007_snd*, %struct.go7007_snd** %12, align 8
  store %struct.go7007_snd* %13, %struct.go7007_snd** %7, align 8
  %14 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %15 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  store %struct.snd_pcm_runtime* %18, %struct.snd_pcm_runtime** %8, align 8
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %23 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %22, i32 0, i32 5
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %28 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %32 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %3
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %43 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %38, %3
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %50 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %54 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %53, i32 0, i32 5
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %57 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %46
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %71 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %10, align 4
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %80 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = trunc i64 %82 to i32
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @memcpy(i32 %83, i32* %84, i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %5, align 8
  %94 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %95 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %66, %46
  %97 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %102 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = trunc i64 %104 to i32
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @memcpy(i32 %105, i32* %106, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %112 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %116 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %115, i32 0, i32 5
  %117 = call i32 @spin_lock(i32* %116)
  %118 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %119 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %122 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %120, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %96
  %126 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %127 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %126, i32 0, i32 5
  %128 = call i32 @spin_unlock(i32* %127)
  br label %149

129:                                              ; preds = %96
  %130 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %131 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %134 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %135, %132
  store i64 %136, i64* %134, align 8
  %137 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %138 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %137, i32 0, i32 5
  %139 = call i32 @spin_unlock(i32* %138)
  %140 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %141 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %129
  %145 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %146 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %145, i32 0, i32 3
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_2__* %147)
  br label %149

149:                                              ; preds = %125, %144, %129
  ret void
}

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
