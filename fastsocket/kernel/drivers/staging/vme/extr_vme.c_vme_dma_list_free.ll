; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_dma_list_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_dma_list_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_dma_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vme_bridge* }
%struct.vme_bridge = type { {}* }

@.str = private unnamed_addr constant [38 x i8] c"Emptying of Link Lists not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Link List in use\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to empty link-list entries\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vme_dma_list_free(%struct.vme_dma_list* %0) #0 {
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
  %17 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load %struct.vme_dma_list*, %struct.vme_dma_list** %3, align 8
  %22 = getelementptr inbounds %struct.vme_dma_list, %struct.vme_dma_list* %21, i32 0, i32 0
  %23 = call i64 @mutex_trylock(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %20
  %30 = load %struct.vme_bridge*, %struct.vme_bridge** %4, align 8
  %31 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.vme_dma_list*)**
  %33 = load i32 (%struct.vme_dma_list*)*, i32 (%struct.vme_dma_list*)** %32, align 8
  %34 = load %struct.vme_dma_list*, %struct.vme_dma_list** %3, align 8
  %35 = call i32 %33(%struct.vme_dma_list* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.vme_dma_list*, %struct.vme_dma_list** %3, align 8
  %41 = getelementptr inbounds %struct.vme_dma_list, %struct.vme_dma_list* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %51

44:                                               ; preds = %29
  %45 = load %struct.vme_dma_list*, %struct.vme_dma_list** %3, align 8
  %46 = getelementptr inbounds %struct.vme_dma_list, %struct.vme_dma_list* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load %struct.vme_dma_list*, %struct.vme_dma_list** %3, align 8
  %49 = call i32 @kfree(%struct.vme_dma_list* %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %44, %38, %25, %16
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.vme_dma_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
