; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_copy_playback_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_copy_playback_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ua101_stream = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64, i32* }
%struct.urb = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ua101_stream*, %struct.urb*, i32)* @copy_playback_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_playback_data(%struct.ua101_stream* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ua101_stream*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.ua101_stream* %0, %struct.ua101_stream** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %13 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %8, align 8
  %17 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %18 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %24 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = mul i32 %25, %26
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %22, i64 %28
  store i32* %29, i32** %11, align 8
  %30 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %31 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %32, %33
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ule i32 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %3
  %40 = load %struct.urb*, %struct.urb** %6, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul i32 %44, %45
  %47 = call i32 @memcpy(i64 %42, i32* %43, i32 %46)
  br label %81

48:                                               ; preds = %3
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %53 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub i32 %51, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.urb*, %struct.urb** %6, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = mul i32 %60, %61
  %63 = call i32 @memcpy(i64 %58, i32* %59, i32 %62)
  %64 = load %struct.urb*, %struct.urb** %6, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul i32 %67, %68
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %66, %70
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub i32 %75, %76
  %78 = load i32, i32* %9, align 4
  %79 = mul i32 %77, %78
  %80 = call i32 @memcpy(i64 %71, i32* %74, i32 %79)
  br label %81

81:                                               ; preds = %48, %39
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %84 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %88 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %91 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp uge i32 %89, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %81
  %95 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %99 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %94, %81
  %103 = load i32, i32* %7, align 4
  %104 = zext i32 %103 to i64
  %105 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %106 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, %104
  store i64 %108, i64* %106, align 8
  %109 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %110 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp sge i64 %111, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %102
  %117 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %121 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %122, %119
  store i64 %123, i64* %121, align 8
  store i32 1, i32* %4, align 4
  br label %125

124:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %116
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @memcpy(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
