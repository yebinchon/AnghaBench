; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_configure_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_configure_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_substream*)* @configure_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_endpoint(%struct.snd_usb_substream* %0) #0 {
  %2 = alloca %struct.snd_usb_substream*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %2, align 8
  %4 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %12 = call i32 @stop_endpoints(%struct.snd_usb_substream* %11, i32 0, i32 0, i32 0)
  %13 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %14 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %17 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %20 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %23 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %26 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %29 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %32 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @snd_usb_endpoint_set_params(i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32* %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  br label %64

38:                                               ; preds = %1
  %39 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %40 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %39, i32 0, i32 7
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %45 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %48 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %51 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %54 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %57 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %60 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @snd_usb_endpoint_set_params(i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32* null)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %43, %38
  br label %64

64:                                               ; preds = %63, %37
  %65 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %2, align 8
  %66 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stop_endpoints(%struct.snd_usb_substream*, i32, i32, i32) #1

declare dso_local i32 @snd_usb_endpoint_set_params(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
