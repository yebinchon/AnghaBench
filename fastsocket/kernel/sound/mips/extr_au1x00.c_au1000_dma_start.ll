; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_au1x00.c_au1000_dma_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_au1x00.c_au1000_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_stream = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_stream*)* @au1000_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1000_dma_start(%struct.audio_stream* %0) #0 {
  %2 = alloca %struct.audio_stream*, align 8
  store %struct.audio_stream* %0, %struct.audio_stream** %2, align 8
  %3 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %4 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @snd_BUG_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %113

12:                                               ; preds = %1
  %13 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %14 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @init_dma(i32 %15)
  %17 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %18 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @get_dma_active_buffer(i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %12
  %23 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %24 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clear_dma_done0(i32 %25)
  %27 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %28 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %31 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @set_dma_addr0(i32 %29, i32 %34)
  %36 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %37 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %40 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %41, 1
  %43 = call i32 @set_dma_count0(i32 %38, i32 %42)
  %44 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %45 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %48 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @set_dma_addr1(i32 %46, i32 %53)
  %55 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %56 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %59 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %60, 1
  %62 = call i32 @set_dma_count1(i32 %57, i32 %61)
  br label %104

63:                                               ; preds = %12
  %64 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %65 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @clear_dma_done1(i32 %66)
  %68 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %69 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %72 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @set_dma_addr1(i32 %70, i32 %75)
  %77 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %78 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %81 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = ashr i32 %82, 1
  %84 = call i32 @set_dma_count1(i32 %79, i32 %83)
  %85 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %86 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %89 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @set_dma_addr0(i32 %87, i32 %94)
  %96 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %97 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %100 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = ashr i32 %101, 1
  %103 = call i32 @set_dma_count0(i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %63, %22
  %105 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %106 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @enable_dma_buffers(i32 %107)
  %109 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %110 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @start_dma(i32 %111)
  br label %113

113:                                              ; preds = %104, %11
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @init_dma(i32) #1

declare dso_local i64 @get_dma_active_buffer(i32) #1

declare dso_local i32 @clear_dma_done0(i32) #1

declare dso_local i32 @set_dma_addr0(i32, i32) #1

declare dso_local i32 @set_dma_count0(i32, i32) #1

declare dso_local i32 @set_dma_addr1(i32, i32) #1

declare dso_local i32 @set_dma_count1(i32, i32) #1

declare dso_local i32 @clear_dma_done1(i32) #1

declare dso_local i32 @enable_dma_buffers(i32) #1

declare dso_local i32 @start_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
