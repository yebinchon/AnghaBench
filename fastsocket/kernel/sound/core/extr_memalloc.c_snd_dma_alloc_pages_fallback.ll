; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_memalloc.c_snd_dma_alloc_pages_fallback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_memalloc.c_snd_dma_alloc_pages_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_dma_buffer = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dma_alloc_pages_fallback(i32 %0, %struct.device* %1, i64 %2, %struct.snd_dma_buffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.snd_dma_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.device* %1, %struct.device** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.snd_dma_buffer* %3, %struct.snd_dma_buffer** %9, align 8
  br label %12

12:                                               ; preds = %46, %4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %17 = call i32 @snd_dma_alloc_pages(i32 %13, %struct.device* %14, i64 %15, %struct.snd_dma_buffer* %16)
  store i32 %17, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %12
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %56

26:                                               ; preds = %19
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %56

33:                                               ; preds = %26
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @get_order(i64 %35)
  %37 = shl i64 %34, %36
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i64, i64* %11, align 8
  store i64 %42, i64* %8, align 8
  br label %46

43:                                               ; preds = %33
  %44 = load i64, i64* %8, align 8
  %45 = lshr i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %43, %41
  br label %12

47:                                               ; preds = %12
  %48 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %49 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %56

55:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %52, %30, %24
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @snd_dma_alloc_pages(i32, %struct.device*, i64, %struct.snd_dma_buffer*) #1

declare dso_local i64 @get_order(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
