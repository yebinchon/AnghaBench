; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_sgbuf.c_snd_sgbuf_get_chunk_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_sgbuf.c_snd_sgbuf_get_chunk_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dma_buffer = type { %struct.snd_sg_buf* }
%struct.snd_sg_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sgbuf_get_chunk_size(%struct.snd_dma_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_dma_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_sg_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_dma_buffer* %0, %struct.snd_dma_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %12, i32 0, i32 0
  %14 = load %struct.snd_sg_buf*, %struct.snd_sg_buf** %13, align 8
  store %struct.snd_sg_buf* %14, %struct.snd_sg_buf** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = lshr i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add i32 %18, %19
  %21 = sub i32 %20, 1
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = lshr i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.snd_sg_buf*, %struct.snd_sg_buf** %8, align 8
  %25 = getelementptr inbounds %struct.snd_sg_buf, %struct.snd_sg_buf* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = lshr i32 %31, %32
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %62, %3
  %35 = load i32, i32* %9, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %63

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %11, align 4
  %44 = load %struct.snd_sg_buf*, %struct.snd_sg_buf** %8, align 8
  %45 = getelementptr inbounds %struct.snd_sg_buf, %struct.snd_sg_buf* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PAGE_SHIFT, align 4
  %53 = lshr i32 %51, %52
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %41
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = sub i32 %59, %60
  store i32 %61, i32* %4, align 4
  br label %65

62:                                               ; preds = %41
  br label %34

63:                                               ; preds = %40
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %56
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
