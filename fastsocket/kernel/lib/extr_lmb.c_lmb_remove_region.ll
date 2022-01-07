; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_lmb.c_lmb_remove_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_lmb.c_lmb_remove_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmb_region = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lmb_region*, i64)* @lmb_remove_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lmb_remove_region(%struct.lmb_region* %0, i64 %1) #0 {
  %3 = alloca %struct.lmb_region*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.lmb_region* %0, %struct.lmb_region** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  store i64 %6, i64* %5, align 8
  br label %7

7:                                                ; preds = %44, %2
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.lmb_region*, %struct.lmb_region** %3, align 8
  %10 = getelementptr inbounds %struct.lmb_region, %struct.lmb_region* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %8, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %7
  %16 = load %struct.lmb_region*, %struct.lmb_region** %3, align 8
  %17 = getelementptr inbounds %struct.lmb_region, %struct.lmb_region* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.lmb_region*, %struct.lmb_region** %3, align 8
  %25 = getelementptr inbounds %struct.lmb_region, %struct.lmb_region* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %23, i32* %29, align 4
  %30 = load %struct.lmb_region*, %struct.lmb_region** %3, align 8
  %31 = getelementptr inbounds %struct.lmb_region, %struct.lmb_region* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lmb_region*, %struct.lmb_region** %3, align 8
  %39 = getelementptr inbounds %struct.lmb_region, %struct.lmb_region* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %15
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %7

47:                                               ; preds = %7
  %48 = load %struct.lmb_region*, %struct.lmb_region** %3, align 8
  %49 = getelementptr inbounds %struct.lmb_region, %struct.lmb_region* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
