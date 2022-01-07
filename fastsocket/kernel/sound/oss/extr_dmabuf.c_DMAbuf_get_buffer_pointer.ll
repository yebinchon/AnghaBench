; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_get_buffer_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_get_buffer_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buffparms = type { i32, i32, i32, i32, i64, i32, i64 }

@DMA_ACTIVE = common dso_local global i32 0, align 4
@isa_dma_bridge_buggy = common dso_local global i32 0, align 4
@DMA_MAP_MAPPED = common dso_local global i32 0, align 4
@DMODE_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DMAbuf_get_buffer_pointer(i32 %0, %struct.dma_buffparms* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_buffparms*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.dma_buffparms* %1, %struct.dma_buffparms** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %11 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DMA_ACTIVE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %100

17:                                               ; preds = %3
  %18 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %19 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = call i64 (...) @claim_dma_lock()
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @clear_dma_ff(i32 %22)
  %24 = load i32, i32* @isa_dma_bridge_buggy, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %28 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @disable_dma(i32 %29)
  br label %31

31:                                               ; preds = %26, %17
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @get_dma_residue(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %35 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %40 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DMA_MAP_MAPPED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %78, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @DMODE_OUTPUT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %51 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %57 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %54
  br label %62

62:                                               ; preds = %61, %49
  br label %77

63:                                               ; preds = %45
  %64 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %65 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %71 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %74, %68
  br label %76

76:                                               ; preds = %75, %63
  br label %77

77:                                               ; preds = %76, %62
  br label %78

78:                                               ; preds = %77, %31
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %78
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %85 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %88, %82
  %90 = load i32, i32* @isa_dma_bridge_buggy, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %94 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @enable_dma(i32 %95)
  br label %97

97:                                               ; preds = %92, %89
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @release_dma_lock(i64 %98)
  br label %100

100:                                              ; preds = %97, %16
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @get_dma_residue(i32) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
