; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/txx9/extr_txx9aclc.c_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/txx9/extr_txx9aclc.c_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.txx9aclc_dmadata = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.txx9aclc_dmadata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.txx9aclc_dmadata*
  store %struct.txx9aclc_dmadata* %9, %struct.txx9aclc_dmadata** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %5, align 8
  %12 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %5, align 8
  %17 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i8* @kasprintf(i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %24 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_name(i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strcmp(i32 %28, i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %5, align 8
  %34 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %33, i32 0, i32 0
  %35 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %36 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %2
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @kfree(i8* %38)
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i8* @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
