; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_fde_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_fde_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fde_accumulator = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fde_accumulator*, i32*)* @fde_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fde_insert(%struct.fde_accumulator* %0, i32* %1) #0 {
  %3 = alloca %struct.fde_accumulator*, align 8
  %4 = alloca i32*, align 8
  store %struct.fde_accumulator* %0, %struct.fde_accumulator** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.fde_accumulator*, %struct.fde_accumulator** %3, align 8
  %6 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.fde_accumulator*, %struct.fde_accumulator** %3, align 8
  %12 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32**, i32*** %14, align 8
  %16 = load %struct.fde_accumulator*, %struct.fde_accumulator** %3, align 8
  %17 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32*, i32** %15, i64 %22
  store i32* %10, i32** %23, align 8
  br label %24

24:                                               ; preds = %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
