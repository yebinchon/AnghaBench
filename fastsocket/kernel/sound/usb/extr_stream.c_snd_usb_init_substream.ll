; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_stream.c_snd_usb_init_substream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_stream.c_snd_usb_init_substream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_stream = type { i32, %struct.TYPE_2__*, %struct.snd_usb_substream* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_usb_substream = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.snd_usb_stream*, i32 }
%struct.audioformat = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_stream*, i32, %struct.audioformat*)* @snd_usb_init_substream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usb_init_substream(%struct.snd_usb_stream* %0, i32 %1, %struct.audioformat* %2) #0 {
  %4 = alloca %struct.snd_usb_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.audioformat*, align 8
  %7 = alloca %struct.snd_usb_substream*, align 8
  store %struct.snd_usb_stream* %0, %struct.snd_usb_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.audioformat* %2, %struct.audioformat** %6, align 8
  %8 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %8, i32 0, i32 2
  %10 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %10, i64 %12
  store %struct.snd_usb_substream* %13, %struct.snd_usb_substream** %7, align 8
  %14 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %15 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %14, i32 0, i32 5
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %18 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %17, i32 0, i32 9
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %4, align 8
  %21 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %22 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %21, i32 0, i32 8
  store %struct.snd_usb_stream* %20, %struct.snd_usb_stream** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %25 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %4, align 8
  %27 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %32 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %4, align 8
  %34 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %39 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %4, align 8
  %41 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @snd_usb_set_pcm_ops(i32 %42, i32 %43)
  %45 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %46 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %45, i32 0, i32 3
  %47 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %48 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %47, i32 0, i32 5
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  %50 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %51 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %54 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %58 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %62 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %65 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.audioformat*, %struct.audioformat** %6, align 8
  %67 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  %70 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snd_usb_set_pcm_ops(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
