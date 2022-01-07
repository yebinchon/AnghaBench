; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_dma_list_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_dma_list_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_dma_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vme_bridge* }
%struct.vme_bridge = type { {}* }

@.str = private unnamed_addr constant [39 x i8] c"Link List DMA execution not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vme_dma_list_exec(%struct.vme_dma_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vme_dma_list*, align 8
  %4 = alloca %struct.vme_bridge*, align 8
  %5 = alloca i32, align 4
  store %struct.vme_dma_list* %0, %struct.vme_dma_list** %3, align 8
  %6 = load %struct.vme_dma_list*, %struct.vme_dma_list** %3, align 8
  %7 = getelementptr inbounds %struct.vme_dma_list, %struct.vme_dma_list* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  store %struct.vme_bridge* %10, %struct.vme_bridge** %4, align 8
  %11 = load %struct.vme_bridge*, %struct.vme_bridge** %4, align 8
  %12 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.vme_dma_list*)**
  %14 = load i32 (%struct.vme_dma_list*)*, i32 (%struct.vme_dma_list*)** %13, align 8
  %15 = icmp eq i32 (%struct.vme_dma_list*)* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.vme_dma_list*, %struct.vme_dma_list** %3, align 8
  %22 = getelementptr inbounds %struct.vme_dma_list, %struct.vme_dma_list* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.vme_bridge*, %struct.vme_bridge** %4, align 8
  %25 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.vme_dma_list*)**
  %27 = load i32 (%struct.vme_dma_list*)*, i32 (%struct.vme_dma_list*)** %26, align 8
  %28 = load %struct.vme_dma_list*, %struct.vme_dma_list** %3, align 8
  %29 = call i32 %27(%struct.vme_dma_list* %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.vme_dma_list*, %struct.vme_dma_list** %3, align 8
  %31 = getelementptr inbounds %struct.vme_dma_list, %struct.vme_dma_list* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %20, %16
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
