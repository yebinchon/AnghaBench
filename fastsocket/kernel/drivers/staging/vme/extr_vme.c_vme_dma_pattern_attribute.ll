; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_dma_pattern_attribute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_dma_pattern_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_dma_attr = type { i32, i32, i8* }
%struct.vme_dma_pattern = type { i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Unable to allocate memory for attributes structure\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Unable to allocate memory for pattern attributes\0A\00", align 1
@VME_DMA_PATTERN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vme_dma_attr* @vme_dma_pattern_attribute(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.vme_dma_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vme_dma_attr*, align 8
  %7 = alloca %struct.vme_dma_pattern*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i64 @kmalloc(i32 16, i32 %8)
  %10 = inttoptr i64 %9 to %struct.vme_dma_attr*
  store %struct.vme_dma_attr* %10, %struct.vme_dma_attr** %6, align 8
  %11 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %6, align 8
  %12 = icmp eq %struct.vme_dma_attr* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %42

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i64 @kmalloc(i32 16, i32 %16)
  %18 = inttoptr i64 %17 to %struct.vme_dma_pattern*
  store %struct.vme_dma_pattern* %18, %struct.vme_dma_pattern** %7, align 8
  %19 = load %struct.vme_dma_pattern*, %struct.vme_dma_pattern** %7, align 8
  %20 = icmp eq %struct.vme_dma_pattern* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %38

23:                                               ; preds = %15
  %24 = load i32, i32* @VME_DMA_PATTERN, align 4
  %25 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %6, align 8
  %26 = getelementptr inbounds %struct.vme_dma_attr, %struct.vme_dma_attr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.vme_dma_pattern*, %struct.vme_dma_pattern** %7, align 8
  %28 = bitcast %struct.vme_dma_pattern* %27 to i8*
  %29 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %6, align 8
  %30 = getelementptr inbounds %struct.vme_dma_attr, %struct.vme_dma_attr* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.vme_dma_pattern*, %struct.vme_dma_pattern** %7, align 8
  %33 = getelementptr inbounds %struct.vme_dma_pattern, %struct.vme_dma_pattern* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.vme_dma_pattern*, %struct.vme_dma_pattern** %7, align 8
  %36 = getelementptr inbounds %struct.vme_dma_pattern, %struct.vme_dma_pattern* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %6, align 8
  store %struct.vme_dma_attr* %37, %struct.vme_dma_attr** %3, align 8
  br label %43

38:                                               ; preds = %21
  %39 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %6, align 8
  %40 = bitcast %struct.vme_dma_attr* %39 to %struct.vme_dma_pattern*
  %41 = call i32 @kfree(%struct.vme_dma_pattern* %40)
  br label %42

42:                                               ; preds = %38, %13
  store %struct.vme_dma_attr* null, %struct.vme_dma_attr** %3, align 8
  br label %43

43:                                               ; preds = %42, %23
  %44 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %3, align 8
  ret %struct.vme_dma_attr* %44
}

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @kfree(%struct.vme_dma_pattern*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
