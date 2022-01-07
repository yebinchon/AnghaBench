; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_adbdma_setbuffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_adbdma_setbuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@VORTEX_ADBDMA_BUFBASE = common dso_local global i32 0, align 4
@VORTEX_ADBDMA_BUFCFG0 = common dso_local global i64 0, align 8
@VORTEX_ADBDMA_BUFCFG1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32, i32)* @vortex_adbdma_setbuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_adbdma_setbuffers(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i64 %14
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %27 [
    i32 4, label %28
    i32 3, label %52
    i32 2, label %81
    i32 1, label %104
  ]

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %4, %27
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = or i32 -67108864, %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @VORTEX_ADBDMA_BUFBASE, align 4
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 %40, 4
  %42 = add nsw i32 %39, %41
  %43 = add nsw i32 %42, 12
  %44 = sext i32 %43 to i64
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %48, 3
  %50 = call i32 @snd_pcm_sgbuf_get_addr(i32 %47, i32 %49)
  %51 = call i32 @hwwrite(i32 %38, i64 %44, i32 %50)
  br label %52

52:                                               ; preds = %4, %28
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, 301989888
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %57, 1
  %59 = shl i32 %58, 12
  %60 = or i32 -1073741824, %59
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @VORTEX_ADBDMA_BUFBASE, align 4
  %69 = load i32, i32* %6, align 4
  %70 = shl i32 %69, 4
  %71 = add nsw i32 %68, %70
  %72 = add nsw i32 %71, 8
  %73 = sext i32 %72 to i64
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 %77, 2
  %79 = call i32 @snd_pcm_sgbuf_get_addr(i32 %76, i32 %78)
  %80 = call i32 @hwwrite(i32 %67, i64 %73, i32 %79)
  br label %81

81:                                               ; preds = %4, %52
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 %82, 1
  %84 = or i32 -603979776, %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @VORTEX_ADBDMA_BUFBASE, align 4
  %93 = load i32, i32* %6, align 4
  %94 = shl i32 %93, 4
  %95 = add nsw i32 %92, %94
  %96 = add nsw i32 %95, 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @snd_pcm_sgbuf_get_addr(i32 %100, i32 %101)
  %103 = call i32 @hwwrite(i32 %91, i64 %97, i32 %102)
  br label %104

104:                                              ; preds = %4, %81
  %105 = load i32, i32* %7, align 4
  %106 = sub nsw i32 %105, 1
  %107 = shl i32 %106, 12
  %108 = or i32 -1073741824, %107
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @VORTEX_ADBDMA_BUFBASE, align 4
  %117 = load i32, i32* %6, align 4
  %118 = shl i32 %117, 4
  %119 = add nsw i32 %116, %118
  %120 = sext i32 %119 to i64
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @snd_pcm_sgbuf_get_addr(i32 %123, i32 0)
  %125 = call i32 @hwwrite(i32 %115, i64 %120, i32 %124)
  br label %126

126:                                              ; preds = %104
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i64, i64* @VORTEX_ADBDMA_BUFCFG0, align 8
  %131 = load i32, i32* %6, align 4
  %132 = shl i32 %131, 3
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %130, %133
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @hwwrite(i32 %129, i64 %134, i32 %137)
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i64, i64* @VORTEX_ADBDMA_BUFCFG1, align 8
  %143 = load i32, i32* %6, align 4
  %144 = shl i32 %143, 3
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %142, %145
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @hwwrite(i32 %141, i64 %146, i32 %149)
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @vortex_adbdma_setfirstbuffer(%struct.TYPE_6__* %151, i32 %152)
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @vortex_adbdma_setstartbuffer(%struct.TYPE_6__* %154, i32 %155, i32 0)
  ret void
}

declare dso_local i32 @hwwrite(i32, i64, i32) #1

declare dso_local i32 @snd_pcm_sgbuf_get_addr(i32, i32) #1

declare dso_local i32 @vortex_adbdma_setfirstbuffer(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @vortex_adbdma_setstartbuffer(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
