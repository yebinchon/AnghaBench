; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_rspqueue_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_rspqueue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.slic_rspqueue }
%struct.slic_rspqueue = type { i32, i32*, i64, i64, i64*, i32** }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @slic_rspqueue_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_rspqueue_free(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.slic_rspqueue*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 1
  store %struct.slic_rspqueue* %6, %struct.slic_rspqueue** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %55, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %10 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %7
  %14 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %15 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %14, i32 0, i32 5
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %13
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %28 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %27, i32 0, i32 5
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %35 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %34, i32 0, i32 4
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pci_free_consistent(i32 %25, i32 %26, i32* %33, i64 %40)
  br label %42

42:                                               ; preds = %22, %13
  %43 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %44 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %43, i32 0, i32 5
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  store i32* null, i32** %48, align 8
  %49 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %50 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %49, i32 0, i32 4
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %7

58:                                               ; preds = %7
  %59 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %60 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %62 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %64 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
