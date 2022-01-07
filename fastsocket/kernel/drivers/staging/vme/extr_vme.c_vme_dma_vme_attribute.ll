; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_dma_vme_attribute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_dma_vme_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_dma_attr = type { i64, i32, i32, i32, i8*, i32 }
%struct.vme_dma_vme = type { i64, i32, i32, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Unable to allocate memory for attributes structure\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Unable to allocate memory for vme attributes\0A\00", align 1
@VME_DMA_VME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vme_dma_attr* @vme_dma_vme_attribute(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vme_dma_attr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vme_dma_attr*, align 8
  %11 = alloca %struct.vme_dma_vme*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i64 @kmalloc(i32 40, i32 %12)
  %14 = inttoptr i64 %13 to %struct.vme_dma_attr*
  store %struct.vme_dma_attr* %14, %struct.vme_dma_attr** %10, align 8
  %15 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %10, align 8
  %16 = icmp eq %struct.vme_dma_attr* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %52

19:                                               ; preds = %4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64 @kmalloc(i32 40, i32 %20)
  %22 = inttoptr i64 %21 to %struct.vme_dma_vme*
  store %struct.vme_dma_vme* %22, %struct.vme_dma_vme** %11, align 8
  %23 = load %struct.vme_dma_vme*, %struct.vme_dma_vme** %11, align 8
  %24 = icmp eq %struct.vme_dma_vme* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %48

27:                                               ; preds = %19
  %28 = load i32, i32* @VME_DMA_VME, align 4
  %29 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %10, align 8
  %30 = getelementptr inbounds %struct.vme_dma_attr, %struct.vme_dma_attr* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.vme_dma_vme*, %struct.vme_dma_vme** %11, align 8
  %32 = bitcast %struct.vme_dma_vme* %31 to i8*
  %33 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %10, align 8
  %34 = getelementptr inbounds %struct.vme_dma_attr, %struct.vme_dma_attr* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.vme_dma_vme*, %struct.vme_dma_vme** %11, align 8
  %37 = getelementptr inbounds %struct.vme_dma_vme, %struct.vme_dma_vme* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.vme_dma_vme*, %struct.vme_dma_vme** %11, align 8
  %40 = getelementptr inbounds %struct.vme_dma_vme, %struct.vme_dma_vme* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.vme_dma_vme*, %struct.vme_dma_vme** %11, align 8
  %43 = getelementptr inbounds %struct.vme_dma_vme, %struct.vme_dma_vme* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.vme_dma_vme*, %struct.vme_dma_vme** %11, align 8
  %46 = getelementptr inbounds %struct.vme_dma_vme, %struct.vme_dma_vme* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %10, align 8
  store %struct.vme_dma_attr* %47, %struct.vme_dma_attr** %5, align 8
  br label %53

48:                                               ; preds = %25
  %49 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %10, align 8
  %50 = bitcast %struct.vme_dma_attr* %49 to %struct.vme_dma_vme*
  %51 = call i32 @kfree(%struct.vme_dma_vme* %50)
  br label %52

52:                                               ; preds = %48, %17
  store %struct.vme_dma_attr* null, %struct.vme_dma_attr** %5, align 8
  br label %53

53:                                               ; preds = %52, %27
  %54 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %5, align 8
  ret %struct.vme_dma_attr* %54
}

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @kfree(%struct.vme_dma_vme*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
