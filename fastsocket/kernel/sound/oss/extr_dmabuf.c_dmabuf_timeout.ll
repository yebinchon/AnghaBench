; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_dmabuf_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_dmabuf_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buffparms = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dma_buffparms*)* @dmabuf_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dmabuf_timeout(%struct.dma_buffparms* %0) #0 {
  %2 = alloca %struct.dma_buffparms*, align 8
  %3 = alloca i64, align 8
  store %struct.dma_buffparms* %0, %struct.dma_buffparms** %2, align 8
  %4 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %5 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @HZ, align 4
  %8 = mul nsw i32 %6, %7
  %9 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %10 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %8, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %3, align 8
  %14 = load i32, i32* @HZ, align 4
  %15 = sdiv i32 %14, 5
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %3, align 8
  %18 = add nsw i64 %17, %16
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i32, i32* @HZ, align 4
  %21 = sdiv i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @HZ, align 4
  %26 = sdiv i32 %25, 2
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %24, %1
  %29 = load i64, i64* %3, align 8
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 20, %30
  %32 = sext i32 %31 to i64
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @HZ, align 4
  %36 = mul nsw i32 20, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
