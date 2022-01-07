; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_mark_full.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_mark_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr_layer = type { i64 }

@IDR_MASK = common dso_local global i32 0, align 4
@IDR_FULL = common dso_local global i64 0, align 8
@IDR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idr_layer**, i32)* @idr_mark_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idr_mark_full(%struct.idr_layer** %0, i32 %1) #0 {
  %3 = alloca %struct.idr_layer**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.idr_layer*, align 8
  %6 = alloca i32, align 4
  store %struct.idr_layer** %0, %struct.idr_layer*** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.idr_layer**, %struct.idr_layer*** %3, align 8
  %8 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %7, i64 0
  %9 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  store %struct.idr_layer* %9, %struct.idr_layer** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @IDR_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load %struct.idr_layer*, %struct.idr_layer** %5, align 8
  %14 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %13, i32 0, i32 0
  %15 = call i32 @__set_bit(i32 %12, i64* %14)
  br label %16

16:                                               ; preds = %31, %2
  %17 = load %struct.idr_layer*, %struct.idr_layer** %5, align 8
  %18 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IDR_FULL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.idr_layer**, %struct.idr_layer*** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %23, i64 %26
  %28 = load %struct.idr_layer*, %struct.idr_layer** %27, align 8
  store %struct.idr_layer* %28, %struct.idr_layer** %5, align 8
  %29 = icmp ne %struct.idr_layer* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %41

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @IDR_BITS, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @IDR_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.idr_layer*, %struct.idr_layer** %5, align 8
  %39 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %38, i32 0, i32 0
  %40 = call i32 @__set_bit(i32 %37, i64* %39)
  br label %16

41:                                               ; preds = %30, %16
  ret void
}

declare dso_local i32 @__set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
