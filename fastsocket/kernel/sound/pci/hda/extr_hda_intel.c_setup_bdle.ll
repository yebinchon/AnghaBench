; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_setup_bdle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_setup_bdle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32 }
%struct.snd_dma_buffer = type { i64, %struct.snd_sg_buf* }
%struct.snd_sg_buf = type { i32 }
%struct.azx_dev = type { i64 }

@AZX_MAX_BDL_ENTRIES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AZX_DCAPS_4K_BDLE_BOUNDARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, %struct.snd_dma_buffer*, %struct.azx_dev*, i32**, i32, i32, i32)* @setup_bdle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_bdle(%struct.azx* %0, %struct.snd_dma_buffer* %1, %struct.azx_dev* %2, i32** %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.azx*, align 8
  %10 = alloca %struct.snd_dma_buffer*, align 8
  %11 = alloca %struct.azx_dev*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.snd_sg_buf*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %9, align 8
  store %struct.snd_dma_buffer* %1, %struct.snd_dma_buffer** %10, align 8
  store %struct.azx_dev* %2, %struct.azx_dev** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %10, align 8
  %22 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %21, i32 0, i32 1
  %23 = load %struct.snd_sg_buf*, %struct.snd_sg_buf** %22, align 8
  store %struct.snd_sg_buf* %23, %struct.snd_sg_buf** %16, align 8
  %24 = load i32**, i32*** %12, align 8
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %17, align 8
  br label %26

26:                                               ; preds = %91, %7
  %27 = load i32, i32* %14, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %104

29:                                               ; preds = %26
  %30 = load %struct.azx_dev*, %struct.azx_dev** %11, align 8
  %31 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AZX_MAX_BDL_ENTRIES, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %108

38:                                               ; preds = %29
  %39 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %10, align 8
  %40 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  store i64 %44, i64* %18, align 8
  %45 = load i64, i64* %18, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = load i32*, i32** %17, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* %18, align 8
  %51 = call i32 @upper_32_bits(i64 %50)
  %52 = call i32 @cpu_to_le32(i32 %51)
  %53 = load i32*, i32** %17, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %10, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @snd_sgbuf_get_chunk_size(%struct.snd_dma_buffer* %55, i32 %56, i32 %57)
  store i32 %58, i32* %19, align 4
  %59 = load %struct.azx*, %struct.azx** %9, align 8
  %60 = getelementptr inbounds %struct.azx, %struct.azx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AZX_DCAPS_4K_BDLE_BOUNDARY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %38
  %66 = load i32, i32* %13, align 4
  %67 = and i32 %66, 4095
  %68 = sub nsw i32 4096, %67
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %20, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %20, align 4
  store i32 %73, i32* %19, align 4
  br label %74

74:                                               ; preds = %72, %65
  br label %75

75:                                               ; preds = %74, %38
  %76 = load i32, i32* %19, align 4
  %77 = call i32 @cpu_to_le32(i32 %76)
  %78 = load i32*, i32** %17, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %14, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85, %75
  br label %91

89:                                               ; preds = %85
  %90 = call i32 @cpu_to_le32(i32 1)
  br label %91

91:                                               ; preds = %89, %88
  %92 = phi i32 [ 0, %88 ], [ %90, %89 ]
  %93 = load i32*, i32** %17, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  store i32 %92, i32* %94, align 4
  %95 = load i32*, i32** %17, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  store i32* %96, i32** %17, align 8
  %97 = load %struct.azx_dev*, %struct.azx_dev** %11, align 8
  %98 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %98, align 8
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %13, align 4
  br label %26

104:                                              ; preds = %26
  %105 = load i32*, i32** %17, align 8
  %106 = load i32**, i32*** %12, align 8
  store i32* %105, i32** %106, align 8
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %104, %35
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @snd_sgbuf_get_chunk_size(%struct.snd_dma_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
