; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_dma_list_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_dma_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_dma_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vme_bridge* }
%struct.vme_bridge = type { {}* }
%struct.vme_dma_attr = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Link List DMA generation not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Link List already submitted\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vme_dma_list_add(%struct.vme_dma_list* %0, %struct.vme_dma_attr* %1, %struct.vme_dma_attr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vme_dma_list*, align 8
  %7 = alloca %struct.vme_dma_attr*, align 8
  %8 = alloca %struct.vme_dma_attr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vme_bridge*, align 8
  %11 = alloca i32, align 4
  store %struct.vme_dma_list* %0, %struct.vme_dma_list** %6, align 8
  store %struct.vme_dma_attr* %1, %struct.vme_dma_attr** %7, align 8
  store %struct.vme_dma_attr* %2, %struct.vme_dma_attr** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.vme_dma_list*, %struct.vme_dma_list** %6, align 8
  %13 = getelementptr inbounds %struct.vme_dma_list, %struct.vme_dma_list* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.vme_bridge*, %struct.vme_bridge** %15, align 8
  store %struct.vme_bridge* %16, %struct.vme_bridge** %10, align 8
  %17 = load %struct.vme_bridge*, %struct.vme_bridge** %10, align 8
  %18 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.vme_dma_list*, %struct.vme_dma_attr*, %struct.vme_dma_attr*, i64)**
  %20 = load i32 (%struct.vme_dma_list*, %struct.vme_dma_attr*, %struct.vme_dma_attr*, i64)*, i32 (%struct.vme_dma_list*, %struct.vme_dma_attr*, %struct.vme_dma_attr*, i64)** %19, align 8
  %21 = icmp eq i32 (%struct.vme_dma_list*, %struct.vme_dma_attr*, %struct.vme_dma_attr*, i64)* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %49

26:                                               ; preds = %4
  %27 = load %struct.vme_dma_list*, %struct.vme_dma_list** %6, align 8
  %28 = getelementptr inbounds %struct.vme_dma_list, %struct.vme_dma_list* %27, i32 0, i32 0
  %29 = call i64 @mutex_trylock(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %49

35:                                               ; preds = %26
  %36 = load %struct.vme_bridge*, %struct.vme_bridge** %10, align 8
  %37 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.vme_dma_list*, %struct.vme_dma_attr*, %struct.vme_dma_attr*, i64)**
  %39 = load i32 (%struct.vme_dma_list*, %struct.vme_dma_attr*, %struct.vme_dma_attr*, i64)*, i32 (%struct.vme_dma_list*, %struct.vme_dma_attr*, %struct.vme_dma_attr*, i64)** %38, align 8
  %40 = load %struct.vme_dma_list*, %struct.vme_dma_list** %6, align 8
  %41 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %7, align 8
  %42 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 %39(%struct.vme_dma_list* %40, %struct.vme_dma_attr* %41, %struct.vme_dma_attr* %42, i64 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.vme_dma_list*, %struct.vme_dma_list** %6, align 8
  %46 = getelementptr inbounds %struct.vme_dma_list, %struct.vme_dma_list* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %35, %31, %22
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
