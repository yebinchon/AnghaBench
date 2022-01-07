; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo-new.c___kfifo_dma_out_prepare_r.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo-new.c___kfifo_dma_out_prepare_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kfifo = type { i32, i32 }
%struct.scatterlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kfifo_dma_out_prepare_r(%struct.__kfifo* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.__kfifo*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.__kfifo* %0, %struct.__kfifo** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = call i32 (...) @BUG()
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i32, i32* %10, align 4
  %18 = load i64, i64* %11, align 8
  %19 = call i32 @__kfifo_max_r(i32 %17, i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %11, align 8
  %23 = add i64 %21, %22
  %24 = load %struct.__kfifo*, %struct.__kfifo** %7, align 8
  %25 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.__kfifo*, %struct.__kfifo** %7, align 8
  %28 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub i32 %26, %29
  %31 = zext i32 %30 to i64
  %32 = icmp ugt i64 %23, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %47

34:                                               ; preds = %16
  %35 = load %struct.__kfifo*, %struct.__kfifo** %7, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.__kfifo*, %struct.__kfifo** %7, align 8
  %40 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @setup_sgl(%struct.__kfifo* %35, %struct.scatterlist* %36, i32 %37, i32 %38, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %34, %33
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__kfifo_max_r(i32, i64) #1

declare dso_local i32 @setup_sgl(%struct.__kfifo*, %struct.scatterlist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
